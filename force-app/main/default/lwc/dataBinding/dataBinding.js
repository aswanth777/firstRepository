import { LightningElement } from 'lwc';

export default class DataBinding extends LightningElement {

    message ; 
    inputvalue = '' ;
    displayItems = false;

    renderedValues = ['one','two','three','four','five','six','seven','eight','nine','ten'];

    handleClick(event){
        this.message = 'button is clicked';
        this.displayItems = true;
    }

    handleInputChnage(event){
        this.inputvalue = event.target.value;
    }

    get getInputValue(){
         return ('  The enterd value is :  '  +this.inputvalue);
    }

    get renderedValues(){
        return this.renderedValues;
    }
}