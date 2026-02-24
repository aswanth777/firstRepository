import { LightningElement } from 'lwc';

export default class Practice extends LightningElement {


firstName='aswanth';
memberstatus;
updatememberstatus(event){
    this.memberstatus=event.target.value;
}

}