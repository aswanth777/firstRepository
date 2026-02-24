public with sharing class ApexUseCasesEighteen {
   public static List<Object> displayAccountANDcon(){

    List<Object>objectList=new List<Object>();
List<Account>accList=[SELECT Id,Name FROM Account ORDER By CreatedDate DESC LIMIT 10];
List<Contact>conList=[Select Id,Name FROM Contact ORDER By CreatedDate DESC LIMIT 10];
   
if(accList.size()>0){
objectList.addAll(accList);
}
if(conList.size()>0){
objectList.addAll(conList);
}
return objectList;
   }
}