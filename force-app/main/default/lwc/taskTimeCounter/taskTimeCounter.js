import { LightningElement } from 'lwc';

export default class TaskTimeCounter extends LightningElement {

    showstartbutton=true;
    timeval='0 : 0 : 0 : 0';
    timeintervalinstance;
    totalmillisec = 0;

    starthandler(event){
        this.showstartbutton=false;
        var parentthis = this; //to parent the whole instance of this js 
    


    this.timeintervalinstance = setInterval( function() {

        var hours=Math.floor((parentthis.totalmillisec %(1000*60*60*24)) / (1000*60*60));
        var minutes=Math.floor((parentthis.totalmillisec %(1000*60*60)) / (1000*60));
        var seconds=Math.floor((parentthis.totalmillisec %(1000*60)) / (1000));
        var milliseconds=Math.floor((parentthis.totalmillisec %(1000)));

        parentthis.timeval=hours +" : " + minutes + " : " + seconds + " : " + milliseconds ;

        parentthis.totalmillisec =+100;
    },100);
}

    stophandler(event)
    {
         clearInterval(  this.timeintervalinstance);
    }
    

    
    resethandler(event){

       this.showstartbutton=true;
       this.timeval='0 : 0 : 0 : 0';
       this. totalmillisec=0;
       clearInterval(this.timeintervalinstance);

    }

}