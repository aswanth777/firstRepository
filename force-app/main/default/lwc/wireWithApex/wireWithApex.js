import { LightningElement,wire } from 'lwc';
import getCases from '@salesforce/apex/wireWithApex.getCases';
export default class WireWithApex extends LightningElement {
caseList;
errorMessage;

@wire(getCases) 
wiredCases({data,error}){
    try{
    if(data){
        this.caseList=data;
        this.errorMessage='';
    }
    if(error){
        this.errorMessage=error.body.message;
        this.data=undefined;
    }
    }
    catch(error){
        console.log('error caught');

    }
    }
}


