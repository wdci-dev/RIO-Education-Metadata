/**
 * @author          WDCi(LKoh)
 * @date            Jan 2022
 * @group           Util
 * @description     Constant
 */

public with sharing class redu_PaymentConstant_UTIL {
    
    public static final String PREFERREDEMAIL_UNIVERSITY = 'University Email';
    public static final String PREFERREDEMAIL_WORK = '  Work Email';
    public static final String PREFERREDEMAIL_ALTERNATE = 'Alternate Email';
    
    public static final String CONTACT_TYPE_APPLICANT = 'Applicant';

    public static final String SALT = 'RIOReady-Reg';
    public static final String COMMUNITY_NAME = 'Education Community';
    public static final String STUDENT_USERPROFILE = 'REDU - Student';
    public static final String STUDENT_PERMISSIONGROUP = 'REDU_Student_Permission_Group';
    public static final String TEST_SELFREGISTER = 'https://loginaddon-developer-edition.na163.force.com/s/login/SelfRegister';
    public static final String USER_COMMUNITYSELFREG_EMAILENCODING = 'ISO-8859-1';    

    public static final String ACCOUNT_RECORDTYPEDEVNAME_ACAPROG = 'Academic_Program';
    public static final String ACCOUNT_RECORDTYPEDEVNAME_EDUINST = 'Educational_Institution';
    public static final String ACCOUNT_RECORDTYPEDEVNAME_UNIDEPT = 'University_Department';

    public static final String CAPTCHA_SUCCESS_V3 = 'Success - v3';
    public static final String CAPTCHA_SUCCESS_V2 = 'Success - v2';
    public static final String CAPTCHA_FAILED = 'Captcha Verification failed';

    public static final String PESTATUS_CURRENT = 'Current';

    public static final String FP_TRANSACTIONTYPE_PAYMENT = 'Payment';
    public static final String FP_TRANSACTIONTYPE_REFUND = 'Refund';
    
    public static final String ORDER_STATUS_DRAFT = 'Draft';
    public static final String ORDER_STATUS_PAID = 'Paid';
}