import { LightningElement,wire,track } from 'lwc';

import getAccountList from '@salesforce/apex/AccountHelper.getAccountList';

export default class LwctoApexMode2 extends LightningElement {

    @track accounts;
    @track error;

    handleload(){

        getAccountList()
        .then(result=> {
            this.accounts=result;
        })

        .catch(error=>{
            this.error=error;
        })
    }

}