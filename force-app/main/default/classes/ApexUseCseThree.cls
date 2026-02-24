public with sharing class ApexUseCseThree {
   public static void sendEmil(String emailAddress){

if(!String.isBlank(emailAddress)){
Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
List<String> toAddresses = new List<String>();
toAddresses.add(emailAddress);
mail.setsubject('Urjent Take a look');
mail.setplaintextbody('This is a email from Apex ');
mail.setToAddresses(toAddresses);

Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
}

   }
}