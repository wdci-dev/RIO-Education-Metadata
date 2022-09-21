/**
 * @Author     WDCi (Vin)
 * @Date     Mar 2021
 * @group     Grade
 * @Description To rollup the sum of “Weighted Points” from sub grade to grade
 *
 * @changehistory
 * ISS-001328 16/09/2022 Jordan - Modified for Calls RIO Ready component
 */

global without sharing class redu_GRD_SubGradeToGradeRollup_TDTM extends hed.TDTM_Runnable {
    Id subGradeRT = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Sub Grade').getRecordTypeId();

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

        Set<Id> parentGradeIds = new Set<Id>();

        //Get qualified sub-grade
        if (triggerAction == hed.TDTM_Runnable.Action.AfterInsert) {
            for (rio_ed__Grade__c grade : newGrade) {
                if (grade.RecordTypeId == subGradeRT && grade.rio_ed__Parent_Grade__c <> null) {
                    parentGradeIds.add(grade.rio_ed__Parent_Grade__c);
                }
            }
        } else if (triggerAction == hed.TDTM_Runnable.Action.AfterUpdate) {
            for (Integer i = 0; i < newGrade.size(); i++) {
                if (
                    newGrade[i].RecordTypeId == subGradeRT &&
                    newGrade[i].rio_ed__Parent_Grade__c <> null &&
                    (newGrade[i].rio_ed__Weighted_Points__c <> oldGrade[i].rio_ed__Weighted_Points__c ||
                    newGrade[i].rio_ed__Grade_Value__c <> oldGrade[i].rio_ed__Grade_Value__c)
                ) {
                    parentGradeIds.add(newGrade[i].rio_ed__Parent_Grade__c);
                }
            }
        } else if (triggerAction == hed.TDTM_Runnable.Action.AfterDelete) {
            for (rio_ed__Grade__c grade : oldGrade) {
                if (grade.RecordTypeId == subGradeRT && grade.rio_ed__Parent_Grade__c <> null) {
                    parentGradeIds.add(grade.rio_ed__Parent_Grade__c);
                }
            }
        }

        //Get all sub-grade related to the qualified parent grade
        if (!parentGradeIds.isEmpty()) {
            List<rio_ed__Grade__c> subGradeList = [
                SELECT
                    Id,
                    rio_ed__Weighted_Points__c,
                    rio_ed__Parent_Grade__c,
                    rio_ed__Grade_Points__c,
                    rio_ed__Grade_Value__c,
                    rio_ed__Weight__c,
                    rio_ed__Term_Grade__r.hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__r.rio_ed__Grade_Setting_Type__c,
                    rio_ed__Term_Grade__r.hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__r.hed__Account__r.ParentId,
                    rio_ed__Term_Grade__r.hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__r.hed__Account__c,
                    rio_ed__Term_Grade__r.hed__Course_Connection__r.hed__Account__c
                FROM rio_ed__Grade__c
                WHERE rio_ed__Parent_Grade__c IN :parentGradeIds AND RecordTypeId = :subGradeRT
            ];
            Map<Id, rio_ed__Grade__c> updateParentGrade = new Map<Id, rio_ed__Grade__c>();
            Map<Id, Decimal> totalChildGradeWeightByParent = new Map<Id, Decimal>();
            
            //Get grade settings
            Set<Id> gsAcctIds = new Set<Id>();

            for (rio_ed__Grade__c grade : subGradeList) {
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

            //Calculate grade point for parent grade
            for (rio_ed__Grade__c grade : subGradeList) {
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

                //Set weighted points
                Decimal weightedPoints = null;

                if (grade.rio_ed__Weighted_Points__c != 0) {
                    weightedPoints = grade.rio_ed__Weighted_Points__c;
                } else if (grade.rio_ed__Grade_Points__c != null) {
                    weightedPoints = (grade.rio_ed__Weight__c / 100) * grade.rio_ed__Grade_Points__c;
                }

                if (grade.rio_ed__Parent_Grade__c != null && weightedPoints != null) {
                    if (updateParentGrade.containsKey(grade.rio_ed__Parent_Grade__c)) {
                        updateParentGrade.get(grade.rio_ed__Parent_Grade__c).rio_ed__Grade_Points__c =
                            updateParentGrade.get(grade.rio_ed__Parent_Grade__c).rio_ed__Grade_Points__c + weightedPoints;

                        Decimal weight = totalChildGradeWeightByParent.get(grade.rio_ed__Parent_Grade__c) + grade.rio_ed__Weight__c;
                        totalChildGradeWeightByParent.put(grade.rio_ed__Parent_Grade__c, weight);
                    } else {
                        rio_ed__Grade__c tempGrade = new rio_ed__Grade__c();
                        tempGrade.Id = grade.rio_ed__Parent_Grade__c;
                        tempGrade.rio_ed__Grade_Points__c = weightedPoints;

                        updateParentGrade.put(grade.rio_ed__Parent_Grade__c, tempGrade);

                        totalChildGradeWeightByParent.put(grade.rio_ed__Parent_Grade__c, grade.rio_ed__Weight__c);
                    }
                }
            }

            //If no result for parent grade, mark grade point as null
            for (Id parentId : parentGradeIds) {
                if (!updateParentGrade.containsKey(parentId)) {
                    rio_ed__Grade__c tempGrade = new rio_ed__Grade__c();
                    tempGrade.Id = parentId;
                    tempGrade.rio_ed__Grade_Points__c = null;
                    tempGrade.rio_ed__Grade_Value__c = null;

                    updateParentGrade.put(parentId, tempGrade);
                } else {
                    rio_ed__Grade__c tempGrade = updateParentGrade.get(parentId);
                    tempGrade.rio_ed__Grade_Points__c = tempGrade.rio_ed__Grade_Points__c / totalChildGradeWeightByParent.get(parentId) * 100;

                    for (REDU_GradesRollup_UTIL.GradeSettingWrapper gs : gradeSettings) {
                        if (gs.lowerRange <= tempGrade.rio_ed__Grade_Points__c && tempGrade.rio_ed__Grade_Points__c <= gs.higherRange) {

                            tempGrade.rio_ed__Grade_Value__c = gs.gradeValue;
                            break;
                        }
                    }
                }
            }

            update updateParentGrade.values();
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
                WHERE hed__Active__c = true AND rio_ed__Unique_Key__c = 'rio_ed__Grade__c_redu_GRD_SubGradeToGradeRollup_TDTM_1'];
        if (currentTriggerHandlerList.isEmpty()) {
            hed__Trigger_Handler__c newTriggerHandler = new hed__Trigger_Handler__c(
                Name = 'RIOREADY_GRD_SubGradeToGradeRollup',
                hed__Object__c = 'rio_ed__Grade__c',
                hed__Load_Order__c = 1,
                hed__Trigger_Action__c = 'AfterInsert;AfterUpdate;AfterDelete',
                hed__Class__c = 'redu_GRD_SubGradeToGradeRollup_TDTM',
                hed__Active__c = true,
                hed__User_Managed__c = true,
                rio_ed__Unique_Key__c = 'rio_ed__Grade__c_redu_GRD_SubGradeToGradeRollup_TDTM_1'
            );
            insert newTriggerHandler;
        }
    }
}