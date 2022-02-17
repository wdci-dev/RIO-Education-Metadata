({
    initialize: function(component, event, helper) {
        console.log('Existing Student v0.2');
        		
        component.set("v.pageControl", 'emailCheck');
    },

    onKeyUp: function(component, event, helper){
        //checks for "enter" key
        if (event.getParam('keyCode')===13) {
            helper.checkEmail(component, event, helper);
        }
    },

    handleCheckEmail: function (component, event, helper) {
        helper.checkEmail(component, event, helper);
    },
})