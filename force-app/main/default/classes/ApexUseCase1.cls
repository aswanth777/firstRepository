public with sharing class ApexUseCase1 {
    public static void createNewContact(String firstName,String lastName,String email){
        List<Contact>conList=new  List<Contact>();
       contact conToInsert  = new contact();
       if(!String.isBlank(lastName)){
     
       conToInsert.firstName=firstName;
       conToInsert.lastName=lastName;
       conToInsert.email=email;
       conList.add(conToInsert);
         }

       if(conlist.size()>0){
          insert conToInsert;
      
       }
     
    }
    
}