/**
 * @description       : 
 * @author            : Pasan (peeriyagama@wdcigroup.net)
 * @group             : 
 * @last modified on  : 23-09-2021
 * @last modified by  : Pasan (peeriyagama@wdcigroup.net) 
 * Modifications Log
 * Ver   Date         Author                              Modification
 * 1.0   23-09-2021   Pasan (peeriyagama@wdcigroup.net)   Initial Version
**/
import { api, LightningElement } from 'lwc';
//import TRANSFER_CREDIT_PE_GROUP_FIELD from '@salesforce/schema/rio_ed__Transfer_Credit__c.rio_ed__PE_Group__c';

export default class ReduTransfercreditlistcustomdatatablePegroupcell extends LightningElement {

    @api options;
    @api index;
    @api selectedId;
    @api selectable;     // allows selecting a Group, meaning non course requirement

    selectedText = '';

    connectedCallback(){
        //console.log('peg this.selectedId: '+this.selectedId+' opt: '+this.options);
        if (this.options){
            this.options.forEach(element => {
                if (element.value==this.selectedId){
                    this.selectedText = element.label;
                }
            });

            this.options = this.options.filter(a => a.value!=this.selectedId);
        }
        //console.log('PE Group index: '+JSON.stringify(this.index)+' >> value: '+JSON.stringify(this.selectedId)+'>> options: '+JSON.stringify(this.options));
    }

    handleChange(event) {
        let element = this.template.querySelector("[name='peGroup']");

        //this.selectedId = event.detail.value;
        
        if (element){
            this.selectedId = element.value;
        }

        this.options.forEach(element => {
            //console.log('--pedg this.selectedId: '+this.selectedId+' == '+element.value+' >> '+(element.value==this.selectedId));
            if (element.value==this.selectedId){
                this.selectedText = element.label;
            }
        });

        let evt = new CustomEvent('pegroupsel',{bubbles: true, composed: true, detail: {index: this.index, selectedId : this.selectedId}});
        this.dispatchEvent(evt);

        

        //console.log('pegroupselected>> '+JSON.stringify(event.detail));
    }

    /*get selectedText(){
        this.options.forEach(element => {
            if (element.value==this.selectedId){
                return element.label;
            }
        });
    }*/
}