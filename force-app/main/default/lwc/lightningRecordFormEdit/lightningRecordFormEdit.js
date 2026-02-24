import { LightningElement ,api} from 'lwc';
import ACCOUNT_NAME from '@salesforce/schema/Account.Name';
import ACCOUNT_PHONE from '@salesforce/schema/Account.Phone';
export default class LightningRecordFormEdit extends LightningElement {
    @api recordId;
    ObjectApiName='Account';
    fields=[ACCOUNT_NAME,ACCOUNT_PHONE];
}