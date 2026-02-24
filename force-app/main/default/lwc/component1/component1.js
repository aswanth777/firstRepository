import {  api, LightningElement } from 'lwc';


export default class Component1 extends LightningElement {
   aredetailsvisible=false;
    name ='aswanth';
    company ='accenture';
  //  designation = 'developer';
 @api welcomemessage='hello user!!!';
 checkboxfunction(event){
    this.aredetailsvisible=event.target.checked;

 }
    handlefunction(event){
       this.welcomemessage=event.target.value;
    }

    get designation(){
        return this.name.toUpperCase();
    }

}