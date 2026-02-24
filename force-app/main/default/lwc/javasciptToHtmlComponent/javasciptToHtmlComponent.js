import { LightningElement } from 'lwc';

export default class JavasciptToHtmlComponent extends LightningElement {


    fullname='aswanth ';

    changeNameHandler(event){
        this.fullname='aiswarya';
    }

}