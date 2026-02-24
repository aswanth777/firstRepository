import { LightningElement } from 'lwc';

export default class Getters extends LightningElement {

    firstname='';
    lastname='';
     
    handlechange(event){

        const field=event.target.name;
        if(field==='firstname'){
            this.firstname=event.target.value;
        } else if(field==='lastname'){
            this.lastname=event.target.value;

        }
    }

    get uppercasedFullName(){
        return `${this.firstname} ${this.lastname}`.toUpperCase();
    }


}