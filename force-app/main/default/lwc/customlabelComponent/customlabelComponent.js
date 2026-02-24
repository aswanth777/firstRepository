import { LightningElement } from 'lwc';
import WELCOMELABEL from '@salesforce/label/c.Welcomelabel';
import HOMEPAGELABEL from '@salesforce/label/c.Homepagelabel';
import NEWCLIENTLABEL from '@salesforce/label/c.Newclientlabel';

export default class CustomlabelComponent extends LightningElement {
    labellist = {
        Welcomelabel: WELCOMELABEL,
        Homepagelabel: HOMEPAGELABEL,
        Newclientlabel: NEWCLIENTLABEL
    };

    newclienthandler() {
        alert('entry done');
    }
}