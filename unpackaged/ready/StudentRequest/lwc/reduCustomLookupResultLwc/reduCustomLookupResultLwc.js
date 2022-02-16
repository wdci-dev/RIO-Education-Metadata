/**
 * @description       : 
 * @author            : Pasan (peeriyagama@wdcigroup.net)
 * @group             : 
 * @last modified on  : 04-08-2021
 * @last modified by  : Pasan (peeriyagama@wdcigroup.net)
**/
import { LightningElement, api } from 'lwc';

export default class ReduCustomLookupResultLwc extends LightningElement {

    @api record;
    @api iconName;

    selectRecord(){
        // call the event, sending selected record to parent
        var selectedEvent = new CustomEvent("select", {
            detail: this.record
        });
        this.dispatchEvent(selectedEvent);
    }

}