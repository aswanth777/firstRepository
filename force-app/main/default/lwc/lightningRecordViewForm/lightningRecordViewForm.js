import { LightningElement,api } from 'lwc';

export default class LightningRecordViewForm extends LightningElement {
    @api recordId;
    ObjectApiName = 'Account';
    fields =['Name','Phone','Industry','Website'];
}