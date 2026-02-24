import { LightningElement } from 'lwc';

export default class PatientDetailsComponent extends LightningElement {

    booleanflagvalue=false;

    showformhandler(){
        this.booleanflagvalue=true;
    }


    hideformhandler(){

        this.booleanflagvalue=false;
    }
}