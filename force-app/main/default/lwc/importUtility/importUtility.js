import { LightningElement } from 'lwc';
import myLogo from "@salesforce/resourceUrl/finalLOGO";
import customlabel from "@salesforce/label/c.showinpro";
import USERNAME from "@salesforce/user/Id";
import HASPERMISSION from "@salesforce/userPermission/PermisionsetName";
export default class ImportUtility extends LightningElement {

    src=myLogo;
userId=USERNAME;    


  


    get showinProd(){
        return customlabel == "true" ? true : false;
    }

    get haspermission(){
        console.log('has permission?' +HASPERMISSION);
        return HASPERMISSION
    }
}