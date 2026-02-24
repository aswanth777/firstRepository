import { LightningElement,track } from 'lwc';

export default class Counters extends LightningElement {

@track counter=0;

increment(){
    this.counter ++ ;
}

decrement(){
    this.counter -- ;
}




}