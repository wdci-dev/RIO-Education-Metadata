/**
 * @description       : 
 * @author            : Pasan (peeriyagama@wdcigroup.net)
 * @group             : 
 * @last modified on  : 03-08-2021
 * @last modified by  : Pasan (peeriyagama@wdcigroup.net)
**/
import { api, LightningElement } from 'lwc';

export default class ReduTransfercreditlistcustomdatatablecustomcol extends LightningElement {
    @api index;

    doEdit(event){
        let evt = new CustomEvent('edittc',{bubbles: true, composed: true, detail: {index: this.index}});
        console.log('click>> '+JSON.stringify(evt));
        this.dispatchEvent(evt);
    }

    doRemove(event){
        let evt = new CustomEvent('removetc',{bubbles: true, composed: true, detail: {index: this.index}});
        this.dispatchEvent(evt);
        console.log('remove>> '+JSON.stringify(evt));
    }
}