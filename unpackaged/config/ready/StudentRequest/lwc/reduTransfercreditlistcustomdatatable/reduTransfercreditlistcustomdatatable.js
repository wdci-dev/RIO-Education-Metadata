/**
 * @description       : 
 * @author            : Pasan (peeriyagama@wdcigroup.net)
 * @group             : 
 * @last modified on  : 29-07-2021
 * @last modified by  : Pasan (peeriyagama@wdcigroup.net)
**/
import { LightningElement } from 'lwc';
import LightningDatatable from 'lightning/datatable';
import transferCreditCustomApprovalAction from './reduTransfercreditlistcustomdatatableAction.html';
import transferCreditCustomApprovalPEGroup from './reduTransfercreditlistcustomdatatablePegroup.html';
import transferCreditCustomApprovalPEDGroup from './reduTransfercreditlistcustomdatatablePedgroup.html';

export default class ReduTransfercreditlistcustomdatatable extends LightningDatatable {
        static customTypes = {
            transferCreditApproveCell: {
                   template: transferCreditCustomApprovalAction,
                   standardCellLayout: true,
                   // Provide template data here if needed
                   typeAttributes: ['index', 'status','allowedstatuses','actionablestatuses']
               },
               
               transferCreditPEGroupCell: {
                template: transferCreditCustomApprovalPEGroup,
                standardCellLayout: true,
                // Provide template data here if needed
                typeAttributes: ['index', 'value','options','selectable', 'readonly']
                },

                transferCreditPEDGroupCell: {
                    template: transferCreditCustomApprovalPEDGroup,
                    standardCellLayout: true,
                    // Provide template data here if needed
                    typeAttributes: ['index', 'value','options','selectable', 'readonly']
                },

              //more custom types here
           };

}