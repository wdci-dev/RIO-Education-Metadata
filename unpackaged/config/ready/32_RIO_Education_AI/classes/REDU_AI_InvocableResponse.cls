/**
 * @author      WDCi (Vtan)
 * @date        May 2025
 * @group       Wrapper Object
 * @description Response object for Agentforce action
 * @changehistory
 *
 */
global inherited sharing class REDU_AI_InvocableResponse {

    /**
     * @description success
     */
    public static final String SUCCESS = 'success';

    /**
     * @descripton fail
     */
    public static final String FAIL = 'fail';

    /**
     * @description Success or failure indicator
     */
    @InvocableVariable
    global Boolean isSuccess;

    /**
     * @description Response message
     */
    @InvocableVariable
    global String message;

    /**
     * @description ResponseData
     */
    @InvocableVariable
    global string responseData;

    /**
     * @description Init a lightning response
     * @param isSuccess
     * @param message
     * @param responseData
     */
    global REDU_AI_InvocableResponse(Boolean isSuccess, String message, String responseData){
        this.isSuccess = isSuccess;
        this.message = message;
        this.responseData = responseData;
    }
}