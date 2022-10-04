/**
 * @Author     WDCi (Vin)
 * @Date     Mar 2021
 * @group     Grade
 * @Description To rollup the sum of “Weighted Points” from grade to term grade
 *
 * @changehistory
 * ISS-001328 09/09/2022 Jordan - Added calls functionality for Calls RIO Ready component
 */

global without sharing class redu_GRD_GradeToTermGradeRollup_TDTM extends hed.TDTM_Runnable {

    Id gradeRT = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId();

    /**
     * @description Trigger Handler on rio_ed__Grade__c
     * @param newList the list of rio_ed__Grade__c from trigger new
     * @param oldList the list of rio_ed__Grade__c from trigger old
     * @param triggerAction which trigger event (BeforeInsert, AfterInsert, etc.).
     * @param objResult the describe for rio_ed__Grade__c
     * @return DmlWrapper
     */
    public override DmlWrapper run(List<SObject> newList, List<SObject> oldList, hed.TDTM_Runnable.Action triggerAction, Schema.DescribeSObjectResult objResult) {
        hed.TDTM_Runnable.DmlWrapper dmlWrapper = null;

        List<rio_ed__Grade__c> newGrade = (List<rio_ed__Grade__c>) newList;
        List<rio_ed__Grade__c> oldGrade = (List<rio_ed__Grade__c>) oldList;

        Set<Id> termGradeIdsUpdateGrades = new Set<Id>();
        Set<Id> gradeIdsSetOverrides = new Set<Id>();
        Set<Id> termGradeIdsSetOverrides = new Set<Id>();
        Set<Id> termGradeIdsClearOverrides = new Set<Id>();

        //Get qualified grade
        if (triggerAction == hed.TDTM_Runnable.Action.AfterInsert) {
            for (rio_ed__Grade__c grade : newGrade) {
                if (grade.RecordTypeId == gradeRT && grade.rio_ed__Term_Grade__c <> null) {
                    if (grade.rio_ed__Weighted_Points__c <> null || grade.rio_ed__Grade_Value__c <> null) {
                        termGradeIdsUpdateGrades.add(grade.rio_ed__Term_Grade__c);
                    }

                    if (grade.REDU_Grade_Override__c <> null || grade.REDU_Call_Override__c <> null) {
                        gradeIdsSetOverrides.add(grade.Id);
                        termGradeIdsSetOverrides.add(grade.rio_ed__Term_Grade__c);
                    }
                }
            }
        } else if (triggerAction == hed.TDTM_Runnable.Action.AfterUpdate) {
            for (Integer i = 0; i < newGrade.size(); i++) {
                if (newGrade[i].RecordTypeId == gradeRT && newGrade[i].rio_ed__Term_Grade__c <> null) {
                    if (
                        newGrade[i].rio_ed__Weighted_Points__c <> oldGrade[i].rio_ed__Weighted_Points__c
                        || newGrade[i].rio_ed__Grade_Value__c <> oldGrade[i].rio_ed__Grade_Value__c
                    ) {
                        termGradeIdsUpdateGrades.add(newGrade[i].rio_ed__Term_Grade__c);
                    }

                    if (
                        newGrade[i].REDU_Grade_Override__c <> oldGrade[i].REDU_Grade_Override__c || 
                        newGrade[i].REDU_Call_Override__c <> oldGrade[i].REDU_Call_Override__c) 
                    {
                        gradeIdsSetOverrides.add(newGrade[i].Id);
                        termGradeIdsSetOverrides.add(newGrade[i].rio_ed__Term_Grade__c);
                    }
                }
            }
        } else if (triggerAction == hed.TDTM_Runnable.Action.AfterDelete) {
            for (rio_ed__Grade__c grade : oldGrade) {
                if (grade.RecordTypeId == gradeRT && grade.rio_ed__Term_Grade__c <> null) {
                    if (grade.rio_ed__Weighted_Points__c <> null || grade.rio_ed__Grade_Value__c <> null) {
                        termGradeIdsUpdateGrades.add(grade.rio_ed__Term_Grade__c);
                    }

                    if (grade.REDU_Grade_Override__c <> null || grade.REDU_Call_Override__c <> null) {
                        termGradeIdsClearOverrides.add(grade.rio_ed__Term_Grade__c);
                    }
                }
            }
        }

        //Get all grade related to the qualified term grade
        if (!termGradeIdsUpdateGrades.isEmpty() || !termGradeIdsSetOverrides.isEmpty() || !termGradeIdsClearOverrides.isEmpty()) {
            Map<Id, hed__Term_Grade__c> updateTermGrades = new Map<Id, hed__Term_Grade__c>([
                SELECT 
                    hed__Course_Connection__c,
                    hed__Letter_Grade__c, 
                    hed__Numerical_Grade__c, 
                    hed__Term_Grade_Type__c, 
                    REDU_Call_Override__c, 
                    REDU_Grade_Override__c, 
                    hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__r.rio_ed__Grade_Type__c
                FROM hed__Term_Grade__c
                WHERE (Id IN :termGradeIdsUpdateGrades OR Id IN :termGradeIdsSetOverrides)
            ]);
            
            List<rio_ed__Grade__c> gradeList = [
                SELECT 
                    Id, 
                    rio_ed__Weighted_Points__c, 
                    rio_ed__Term_Grade__c, 
                    rio_ed__Weight__c,
                    rio_ed__Grade_Points__c, 
                    rio_ed__Grade_Value__c, 
                    REDU_Grade_Override__c, 
                    REDU_Call_Override__c,
                    rio_ed__Term_Grade__r.hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__r.rio_ed__Grade_Setting_Type__c,
                    rio_ed__Term_Grade__r.hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__r.hed__Account__r.ParentId,
                    rio_ed__Term_Grade__r.hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__r.hed__Account__c,
                    rio_ed__Term_Grade__r.hed__Course_Connection__r.hed__Account__c
                FROM rio_ed__Grade__c
                WHERE rio_ed__Term_Grade__c IN :updateTermGrades.keySet()
                AND RecordTypeId = :gradeRT
            ];

            Map<Id, Decimal> totalChildGradeWeightByParent = new Map<Id, Decimal>();
            Set<Id> termGradeGradesUpdated = new Set<Id>();

            //Get grade settings
            Set<Id> gsAcctIds = new Set<Id>();

            for (rio_ed__Grade__c grade : gradeList) {
                if (grade.rio_ed__Term_Grade__r.hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__r.rio_ed__Grade_Setting_Type__c == 'Educational Institution') {
                    if (String.isNotBlank(grade.rio_ed__Term_Grade__r.hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__r.hed__Account__r.ParentId)) {
                        gsAcctIds.add(grade.rio_ed__Term_Grade__r.hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__r.hed__Account__r.ParentId);
                    }
                } else if (grade.rio_ed__Term_Grade__r.hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__r.rio_ed__Grade_Setting_Type__c == 'University Department') {
                    if (String.isNotBlank(grade.rio_ed__Term_Grade__r.hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__r.hed__Account__c)) {
                        gsAcctIds.add(grade.rio_ed__Term_Grade__r.hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__r.hed__Account__c);
                    }
                } else if (grade.rio_ed__Term_Grade__r.hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__r.rio_ed__Grade_Setting_Type__c == 'Academic Program') {
                    if (String.isNotBlank(grade.rio_ed__Term_Grade__r.hed__Course_Connection__r.hed__Account__c)) {
                        gsAcctIds.add(grade.rio_ed__Term_Grade__r.hed__Course_Connection__r.hed__Account__c);
                    }
                }
            }

            List<REDU_GradesRollup_UTIL.GradeSettingWrapper> gradeSettings = REDU_GradesRollup_UTIL.getGradeSettings(gsAcctIds);

            for (rio_ed__Grade__c grade : gradeList) {
                //If only value is set, set grade points according to Grade Value Scoring Range
                if (String.isNotBlank(grade.rio_ed__Grade_Value__c) && grade.rio_ed__Grade_Points__c == null) {
                    for (REDU_GradesRollup_UTIL.GradeSettingWrapper gs : gradeSettings) {
                        if (gs.gradeValue == grade.rio_ed__Grade_Value__c) {
                            
                            if(String.isNotBlank(gs.gradeValueScoringRange)){
                                if(gs.gradeValueScoringRange == 'Lower Range'){
                                    grade.rio_ed__Grade_Points__c = gs.lowerRange;
                                } else {
                                    grade.rio_ed__Grade_Points__c = gs.higherRange;
                                }
                            }

                            break;
                        }
                    }
                }

                //Update numerical grade in term grade
                if (termGradeIdsUpdateGrades.contains(grade.rio_ed__Term_Grade__c)) {
                    Decimal weightedPoints = null;

                    if (grade.rio_ed__Weighted_Points__c != 0) {
                        weightedPoints = grade.rio_ed__Weighted_Points__c;
                    } else if (grade.rio_ed__Grade_Points__c != null) {
                        weightedPoints = (grade.rio_ed__Weight__c / 100) * grade.rio_ed__Grade_Points__c;
                    }

                    if (weightedPoints != null) {
                        if (termGradeGradesUpdated.contains(grade.rio_ed__Term_Grade__c)) {
                            updateTermGrades.get(grade.rio_ed__Term_Grade__c).hed__Numerical_Grade__c =
                                updateTermGrades.get(grade.rio_ed__Term_Grade__c).hed__Numerical_Grade__c + weightedPoints;

                            Decimal weight = totalChildGradeWeightByParent.get(grade.rio_ed__Term_Grade__c) + grade.rio_ed__Weight__c;
                            totalChildGradeWeightByParent.put(grade.rio_ed__Term_Grade__c, weight);
                        } else {
                            updateTermGrades.get(grade.rio_ed__Term_Grade__c).hed__Numerical_Grade__c = weightedPoints;

                            totalChildGradeWeightByParent.put(grade.rio_ed__Term_Grade__c, grade.rio_ed__Weight__c);
                            termGradeGradesUpdated.add(grade.rio_ed__Term_Grade__c);
                        }
                    }
                }

                //Update override fields
                if (termGradeIdsSetOverrides.contains(grade.rio_ed__Term_Grade__c) && gradeIdsSetOverrides.contains(grade.Id)) {
                    updateTermGrades.get(grade.rio_ed__Term_Grade__c).REDU_Call_Override__c = grade.REDU_Call_Override__c;
                    updateTermGrades.get(grade.rio_ed__Term_Grade__c).REDU_Grade_Override__c = grade.REDU_Grade_Override__c;
                }
            }

            //Set numerical grades
            for (Id tgId : termGradeIdsUpdateGrades) {
                if (!termGradeGradesUpdated.contains(tgId)) {
                    updateTermGrades.get(tgId).hed__Numerical_Grade__c = null;
                } else {
                    updateTermGrades.get(tgId).hed__Numerical_Grade__c = 
                    updateTermGrades.get(tgId).hed__Numerical_Grade__c / totalChildGradeWeightByParent.get(tgId) * 100;
                }
            }

            //Set letter grades
            for (Id tgId : termGradeIdsUpdateGrades) {
                if (!termGradeGradesUpdated.contains(tgId)) {
                    updateTermGrades.get(tgId).hed__Letter_Grade__c = null;
                } else {
                    Decimal numericalGrade = updateTermGrades.get(tgId).hed__Numerical_Grade__c;

                    for (REDU_GradesRollup_UTIL.GradeSettingWrapper gs : gradeSettings) {
                        if (numericalGrade != null) {
                            if (gs.lowerRange <= numericalGrade && numericalGrade <= gs.higherRange) {

                                updateTermGrades.get(tgId).hed__Letter_Grade__c = gs.gradeValue;
                                break;
                            }
                        }
                    }
                }
            }

            // Clear override fields for term grades with deleted grades
            List<hed__Term_Grade__c> termGradeListClearOverrides = [
                SELECT Id, REDU_Call_Override__c, REDU_Grade_Override__c
                FROM hed__Term_Grade__c
                WHERE Id IN :termGradeIdsClearOverrides
            ];

            for (hed__Term_Grade__c termGrade : termGradeListClearOverrides) {
                updateTermGrades.get(termGrade.Id).REDU_Call_Override__c = '';
                updateTermGrades.get(termGrade.Id).REDU_Grade_Override__c = '';
            }

            update updateTermGrades.values();

            //Get course connections related to qualified term grades
            Set<Id> ccIds = new Set<Id>();

            for (hed__Term_Grade__c termGrade : updateTermGrades.values()) {
                if (termGrade.hed__Course_Connection__c != null) {
                    ccIds.add(termGrade.hed__Course_Connection__c);
                }
            }

            Map<Id, hed__Course_Enrollment__c> updateCourseConnections = new Map<Id, hed__Course_Enrollment__c>([
                SELECT 
                    Id, 
                    hed__Grade__c, 
                    hed__Status__c, 
                    rio_ed__Grade_Result__c, 
                    rio_ed__Release_Grades__c, 
                    REDU_Grade_Override__c, 
                    REDU_Grade_Type__c, 
                    hed__Course_Offering__r.hed__Course__r.rio_ed__Grade_Type__c
                FROM hed__Course_Enrollment__c
                WHERE Id IN :ccIds
            ]);

            //Update fields in course connection
            for (hed__Term_Grade__c termGrade : updateTermGrades.values()) {
                if (updateCourseConnections.containsKey(termGrade.hed__Course_Connection__c)) {
                    hed__Course_Enrollment__c cc = updateCourseConnections.get(termGrade.hed__Course_Connection__c);

                    if (cc.hed__Status__c != 'Completed' && !cc.rio_ed__Release_Grades__c) {
                        cc.hed__Grade__c = termGrade.hed__Numerical_Grade__c;
                        cc.rio_ed__Grade_Value__c = termGrade.hed__Letter_Grade__c;

                        if (termGrade.hed__Numerical_Grade__c != null) {
                            for (REDU_GradesRollup_UTIL.GradeSettingWrapper gs : gradeSettings) {
                                if (gs.lowerRange <= termGrade.hed__Numerical_Grade__c && termGrade.hed__Numerical_Grade__c <= gs.higherRange) {
                                    cc.rio_ed__Grade_Points__c = gs.gradePoints;
                                    break;
                                }
                            }
                        } else {
                            cc.rio_ed__Grade_Points__c = null;
                        }

                        if (String.isNotBlank(termGrade.REDU_Call_Override__c)) {
                            cc.REDU_Grade_Type__c = termGrade.REDU_Call_Override__c;
                        } else {
                            cc.REDU_Grade_Type__c = termGrade.hed__Term_Grade_Type__c;
                        }

                        cc.REDU_Grade_Override__c = termGrade.REDU_Grade_Override__c;

                        if (termGrade.REDU_Grade_Override__c == 'No Show' && String.isNotBlank(cc.rio_ed__Grade_Result__c)) {
                            cc.rio_ed__Grade_Result__c = '';
                        }
                    }

                    updateCourseConnections.put(termGrade.hed__Course_Connection__c, cc);
                }
            }

            if (!updateCourseConnections.values().isEmpty()) {
                update updateCourseConnections.values();
            }
        }

        return dmlWrapper;
    }

    //────────────────────────────────────────────────────┐
    // TDTM Setting Installer
    //────────────────────────────────────────────────────┘
    public static void installTDTMSetting() {
        List<hed__Trigger_Handler__c> currentTriggerHandlerList = 
            [SELECT Id, hed__Active__c, rio_ed__Unique_Key__c, hed__Object__c, hed__Load_Order__c, hed__Trigger_Action__c, hed__Class__c
                FROM hed__Trigger_Handler__c 
                WHERE hed__Active__c = true AND rio_ed__Unique_Key__c = 'rio_ed__Grade__c_redu_GRD_GradeToTermGradeRollup_TDTM_1'];
        if (currentTriggerHandlerList.isEmpty()) {
            hed__Trigger_Handler__c newTriggerHandler = new hed__Trigger_Handler__c(
                Name = 'RIOREADY_GRD_GradeToTermGradeRollup',
                hed__Object__c = 'rio_ed__Grade__c',
                hed__Load_Order__c = 1,
                hed__Trigger_Action__c = 'AfterInsert;AfterUpdate;AfterDelete',
                hed__Class__c = 'redu_GRD_GradeToTermGradeRollup_TDTM',
                hed__Active__c = true,
                hed__User_Managed__c = true,
                rio_ed__Unique_Key__c = 'rio_ed__Grade__c_redu_GRD_GradeToTermGradeRollup_TDTM_1'
            );
            insert newTriggerHandler;
        }
    }
}