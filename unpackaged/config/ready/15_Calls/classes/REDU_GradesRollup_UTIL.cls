/**
 * @author      WDCi (Jordan)
 * @date        September 2022
 * @group       Util
 * @description Util for RIO Ready grades rollup classes.
 */

public with sharing class REDU_GradesRollup_UTIL { 

    public static List<GradeSettingWrapper> getGradeSettings(Set<Id> gsAcctIds) {
        List<GradeSettingWrapper> gradeSettings = new List<GradeSettingWrapper>();
        for (rio_ed__Grade_Setting__c gs : [
            SELECT Id, rio_ed__Grade_Range__c, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c, rio_ed__Grade_Value_Scoring_Range__c
            FROM rio_ed__Grade_Setting__c
            WHERE rio_ed__Grade_Setting_Group__c IN :gsAcctIds
        ]) {
            gradeSettings.add(new GradeSettingWrapper(gs));
        }

        return gradeSettings;
    }

    public class GradeSettingWrapper {
        public decimal lowerRange { get; set; }
        public decimal higherRange { get; set; }
        public decimal gradePoints { get; set; }
        public String gradeValue { get; set; }
        public String gradeValueScoringRange { get; set; }

        public GradeSettingWrapper(rio_ed__Grade_Setting__c gs) {
            this.gradePoints = gs.rio_ed__Grade_Points__c;
            this.gradeValue = gs.rio_ed__Grade_Value__c;

            if (String.isNotBlank(gs.rio_ed__Grade_Range__c)) {
                List<String> range = gs.rio_ed__Grade_Range__c.split('-');
                this.lowerRange = Decimal.valueOf(range[0].trim());
                this.higherRange = Decimal.valueOf(range[1].trim());
            } else {
                this.lowerRange = 0;
                this.higherRange = 0;
            }

            this.gradeValueScoringRange = gs.rio_ed__Grade_Value_Scoring_Range__c;
        }
    }

}