/**
 * @description       : 
 * @author            : Pasan (peeriyagama@wdcigroup.net)
 * @group             : 
 * @last modified on  : 22-09-2021
 * @last modified by  : Pasan (peeriyagama@wdcigroup.net)
 * Modifications Log 
 * Ver   Date         Author                              Modification
 * 1.0   22-09-2021   Pasan (peeriyagama@wdcigroup.net)   Initial Version
**/
import { api, LightningElement } from 'lwc';

export default class ReduTransfercreditlistcustomdatatableApprovecell extends LightningElement {
    
    @api value;
    @api index;
    @api status;
    @api allowedStatuses;
    @api actionableStatuses;

    get showRadio(){
        //console.log('>>>>>>> this.actionableStatuses: '+JSON.stringify(this.actionableStatuses));
        let showCmp = false;
        for (let i = 0; i < this.actionableStatuses.length; i++) {
            if (this.actionableStatuses[i].value==this.status){
                showCmp = true;
                break;
            }
        }

        return showCmp;
    }

    handleOnChange(event) {
        let changedStatus = event.target.value;

        let evt = new CustomEvent('statusaction',{bubbles: true, composed: true, detail: {index: this.index, status : changedStatus}});
        this.dispatchEvent(evt);
        //console.log('event.target.value '+event.target.value+ 'evt: '+JSON.stringify(evt));
    }

}