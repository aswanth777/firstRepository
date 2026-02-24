import { LightningElement } from 'lwc';

export default class LifeCycleHooks extends LightningElement {
    userName='Subashini';



    handleNameChange(){
        this.userName='vinod';
    }

    constructor(){ 
        super();
        console.log('Constructor Called');
    }

    connectedCallback(){
        console.log('Connected Callback Called');
    }

    renderedCallback(){
        console.log('Rendered Callback Called');
    } 
    
    disconnectedCallback(){
        console.log('Disconnected Callback Called');
    }   

    errorCallback(error, stack){

        console.log('Error Callback Called');
    }
}