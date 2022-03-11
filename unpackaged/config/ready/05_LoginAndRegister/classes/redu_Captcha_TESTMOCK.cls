@isTest
global class redu_Captcha_TESTMOCK implements HttpCalloutMock {
    
    // Implement this interface method
    global HTTPResponse respond(HTTPRequest req) {
        
        HttpResponse res = new HttpResponse();
        res.setStatus('OK');
        res.setStatusCode(200);
        res.setHeader('Content-Type', 'application/json');
        String successfulCaptchaV2Response = '{"success": true, "challenge_ts": "2021-05-21T06:19:04Z", "hostname": "rioeducationlogintest.cs343.force.com"}';
        String failedCaptchaV2Response ='{"success": false, "error-codes": ["invalid-input-secret"]}';
        res.setBody(successfulCaptchaV2Response);
        
        return res;
    }    
}