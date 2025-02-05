({
    init: function (cmp, event, helper) {
		
		var buttonAlignment = cmp.get("v.buttonAlignment");
		if(buttonAlignment === helper.BUTTON_ALIGNMENT_SPLIT){
			cmp.set("v.isSplitButtonGroup", true);
			cmp.set("v.buttonGroupCss", "");
		} else {
			cmp.set("v.isSplitButtonGroup", false);

			if(buttonAlignment === helper.BUTTON_ALIGNMENT_LEFT){
				cmp.set("v.buttonGroupCss", "slds-float_left");
			} else {
				cmp.set("v.buttonGroupCss", "slds-float_right");
			}
		}
	},
    
    onButtonPressed: function (cmp, event, helper) {
		// Figure out which action was called
		var actionClicked = event.getSource().getLocalId();

		if(actionClicked === "REDIRECTOR1"){
			// Get the record ID attribute
			var urllink = cmp.get("v.redirectorUrl1");
			console.log('URL Link::' + urllink);
			// Get the Lightning event that opens a record in a new tab
			var eUrl = $A.get("e.force:navigateToURL");
			
			// Pass the record ID to the event
			eUrl.setParams({
				"url": urllink
			});
				
			// Open the record
			eUrl.fire();
		} else if(actionClicked === "REDIRECTOR2"){
			// Get the record ID attribute
			var urllink = cmp.get("v.redirectorUrl2");
			console.log('URL Link::' + urllink);
			// Get the Lightning event that opens a record in a new tab
			var eUrl = $A.get("e.force:navigateToURL");
			
			// Pass the record ID to the event
			eUrl.setParams({
				"url": urllink
			});
				
			// Open the record
			eUrl.fire();
		}		
	}
})