import { LightningElement,api ,wire} from 'lwc';
import {getRecord,getFieldValue} from 'lightning/uiRecordApi';
import ACCOUNT_NAME  from '@salesforce/schema/Account.name';
import ACCOUNT_PHONE from '@salesforce/schema/Account.phone';

export default class LoadRecordByWire extends LightningElement {

@api recordId;
fields=[ACCOUNT_NAME,ACCOUNT_PHONE];

@wire(getRecord ,{recordId: '$recordId',fields:'$fields'}) accountvar;

get name(){
    return getFieldValue (this.accountvar.data,ACCOUNT_NAME);

}

get phone(){
    return getFieldValue(this.accountvar.data,ACCOUNT_PHONE);
}

}