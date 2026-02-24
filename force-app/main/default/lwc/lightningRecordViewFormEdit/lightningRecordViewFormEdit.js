import { LightningElement,api } from 'lwc';

export default class LightningRecordViewFormEdit extends LightningElement {
    @api recordId;
    objectApiName = 'Account';

    handlesuccesess(event){

       const resetelement= this.template.querySelector('lightning-record-edit-form');
       resetelement.reset();
    }
}