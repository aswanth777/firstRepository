public with sharing class ApexUseCaseEleven {
    public static String checkFullForm(String acronym){
     List<Acronym_Master__c>acronymList=[SELECT Id,Full_Version__c FROM Acronym_Master__c WHERE Name=:acronym LIMIT 1];
     if(acronymList.size()>0){
        return acronymList[0].Full_Version__c;
       
    }
  return 'nothing found';
}
}