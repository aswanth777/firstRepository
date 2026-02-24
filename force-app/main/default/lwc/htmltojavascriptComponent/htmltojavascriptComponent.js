import { LightningElement } from 'lwc';

export default class HtmltojavascriptComponent extends LightningElement {


    letterhandler(event){

var ValuewegetfromHtml = event.target.value;
alert('you have entered the letter '+ValuewegetfromHtml);

    }




}