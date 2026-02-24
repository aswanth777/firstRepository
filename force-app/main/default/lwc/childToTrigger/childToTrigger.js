import { LightningElement } from 'lwc';

export default class ChildToTrigger extends LightningElement {

    
    selectedProduct;
    handleFiringEvent(){
    this.selectedProduct =   'geely coolrey';
//custom event
    
const event = new CustomEvent('sendproductselected',{detail: this.selectedProduct});

//dispatch event
this.dispatchEvent(event);




    }
}