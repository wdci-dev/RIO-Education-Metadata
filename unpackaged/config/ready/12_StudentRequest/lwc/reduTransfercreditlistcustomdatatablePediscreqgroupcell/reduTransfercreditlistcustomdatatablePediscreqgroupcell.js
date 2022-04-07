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

export default class ReduTransfercreditlistcustomdatatablePediscreqgroupcell extends LightningElement {

    @api options;
    @api index;
    @api selectedId;
    @api selectable;     // allows selecting a Group, meaning non course requirement

    selectedText = '';

    connectedCallback(){
        //console.log('pedg this.selectedId: '+this.selectedId+' opt: '+JSON.stringify(this.options));

        if (this.options){
            this.options.forEach(element => {
                //console.log('--pedg this.selectedId: '+this.selectedId+' == '+element.value+' >> '+(element.value==this.selectedId));
                if (element.value==this.selectedId){
                    this.selectedText = element.label;
                }
            });
        }
        
        //console.log('PEDGrp index: '+JSON.stringify(this.index)+' >> value: '+JSON.stringify(this.selectedId)+'>> options: '+JSON.stringify(this.options));
    }

    get unselectedOptions(){
        return this.options.filter(a => a.value!=this.selectedId);
    }
    

    handleChange(event) {
        //this.selectedId = event.detail.value;

        let element = this.template.querySelector("[name='pedGroup']");
        if (element){
            this.selectedId = element.value;
        }

        this.options.forEach(element => {
            //console.log('--pedg this.selectedId: '+this.selectedId+' == '+element.value+' >> '+(element.value==this.selectedId));
            if (element.value==this.selectedId){
                this.selectedText = element.label;
            }
        });

        let evt1 = new CustomEvent('pedgroup',{bubbles: true, composed: true, detail: {index: this.index, selectedId : this.selectedId}});
        this.dispatchEvent(evt1);
        //console.log('>> pedgroupselected '+JSON.stringify(event.detail));

        //let evt1 = new CustomEvent('statusaction',{bubbles: true, composed: true, detail: {index: this.index, status : 'Draft'}});
        //this.dispatchEvent(evt1);
    }
}