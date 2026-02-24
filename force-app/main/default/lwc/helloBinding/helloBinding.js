import { LightningElement } from 'lwc';

export default class HelloBinding extends LightningElement {

    greeting='world';
    
    handlechange(event){
        this.greeting=event.target.value;
    }
}