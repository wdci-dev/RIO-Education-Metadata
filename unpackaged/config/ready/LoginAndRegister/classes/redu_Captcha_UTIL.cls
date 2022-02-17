/**
 * @author          WDCi(VTan)
 * @date            May 2021
 * @group           Community
 * @description     Util for Google Captcha Verification
 */

public without sharing class redu_Captcha_UTIL {

    @TestVisible
    public static String captchaVerification(String recaptchaSecretKey, String recaptchaResponse) {

        System.debug('captchaVerification initializing...');

        // Server side Captcha verification
        //https://developers.google.com/recaptcha/docs/verify
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://www.google.com/recaptcha/api/siteverify');
        request.setMethod('POST');
        request.setBody('secret=' + recaptchaSecretKey + '&response=' + recaptchaResponse);
        HttpResponse response = http.send(request);

        if (response.getStatusCode() == 200) {
            System.debug(response.getBody());
            Map<String, Object> result = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());

            if (result.containsKey('success') && result.get('success') == true) {
                if (result.containsKey('score')) {
                    //score logic is only needed/returned for v3 (0.0 - 1.0)
                    //https://developers.google.com/recaptcha/docs/v3
                    // Not Implemented as a v2 Captcha was selected
                } else {
                    System.debug('Captcha v2: Verified');
                    return redu_Constant_UTIL.CAPTCHA_SUCCESS_V2;
                }
            } else {
                System.debug('Captcha: Failed');
                return redu_Constant_UTIL.CAPTCHA_FAILED;
            }
        }
        
        System.debug('Captcha: Failed');
        return redu_Constant_UTIL.CAPTCHA_FAILED;        
    }
}