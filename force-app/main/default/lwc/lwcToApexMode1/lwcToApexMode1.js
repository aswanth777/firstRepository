import { LightningElement ,wire} from 'lwc';

import getAccountList from '@salesforce/apex/AccountHelper.getAccountList';

export default class LwcToApexMode1 extends LightningElement {

    @wire(getAccountList)accounts;
}