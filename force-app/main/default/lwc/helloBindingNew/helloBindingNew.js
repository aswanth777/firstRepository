import { LightningElement } from 'lwc';

export default class HelloBindingNew extends LightningElement {

    greeting='world';

    handlechange(event){

        this.greeting=event.target.value;
    }

}