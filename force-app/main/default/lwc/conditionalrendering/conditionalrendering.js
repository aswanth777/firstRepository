import { LightningElement } from 'lwc';

export default class Conditionalrendering extends LightningElement {

    detailsvisible=false;
    handlechange(event){

        this.detailsvisible=event.target.checked;
    }
   
}