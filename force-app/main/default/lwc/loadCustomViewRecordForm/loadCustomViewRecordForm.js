import { LightningElement ,api} from 'lwc';

export default class LoadCustomViewRecordForm extends LightningElement {
    @api recordId;
    objectApiname="case";
    fields=['casenumber','status'];
}