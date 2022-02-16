({
    invoke : function(component, event, helper) {
        /* when this component is executed, this "invoke" method is called
         * in this case, we dont need to execute anything, we'll just leave it empty
         */
        let navUrl = component.get("v.navUrl");
        
        if (!$A.util.isEmpty(navUrl)){
            window.open(navUrl, "_self");
        }
    }
})