import { LightningElement,api } from 'lwc';

export default class EditRecordWithCustomLayout extends LightningElement {

    @api recordId;
    ObjectApiName = 'case';
}