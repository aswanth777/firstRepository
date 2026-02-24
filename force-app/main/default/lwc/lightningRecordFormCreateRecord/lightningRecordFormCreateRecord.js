import { LightningElement } from 'lwc';

import ACCOUNT_NAME from '@salesforce/schema/Account.Name';
import ACCOUNT_PHONE from '@salesforce/schema/Account.Phone';

export default class LightningRecordFormCreateRecord extends LightningElement {
    fields=[ACCOUNT_NAME,ACCOUNT_PHONE];
    objectApiName='Account';
}