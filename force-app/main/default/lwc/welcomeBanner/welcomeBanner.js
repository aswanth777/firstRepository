import { LightningElement } from 'lwc';

export default class WelcomeBanner extends LightningElement {


displaySetting= true;
   template1 = false;
   template2 = false;
   template3 = false;

   name = 'Aswanth';

   inputvalue;

   handleClick1(event) {
      this.template1 = true;
      this.template2 = false;
      this.template3 = false;
   }

   handleClick2(event) {
      this.template2 = true;
      this.template3 = false;
      this.template1 = false;

   }


   handleClick3(event) {
      this.template3 = true;
      this.template1 = false;
      this.template2 = false;
   }




   handler(event) {
      this.inputvalue = event.target.value;
   }

}