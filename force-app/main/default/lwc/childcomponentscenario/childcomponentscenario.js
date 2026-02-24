import { LightningElement, api } from 'lwc';

export default class Childcomponentscenario extends LightningElement {

    @api messagefromparent;
    @api projectcode;
}