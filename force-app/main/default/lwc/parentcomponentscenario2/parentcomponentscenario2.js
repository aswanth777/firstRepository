import { LightningElement } from 'lwc';

export default class Parentcomponentscenario2 extends LightningElement {
    handlechildevent(event){

        const varchildcompname=event.detail.childcompname;
        const varchildcompdetails=event.detail.childcompdetails;

         
       alert('event handled in parent component');

       alert('child com name is '+varchildcompname);
       alert('child component discription is  '+varchildcompdetails );


                 

    }
}