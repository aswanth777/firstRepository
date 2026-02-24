public with sharing class ApexUseCasesFive {
    public static Boolean checkIfCombinationExist(String accountName,String contactName){
        List<Contact>conList=[SELECT Id,Name FROM Contact WHERE Name=:contactName AND Account.Name=:accountName];
        if(conList.size()>0){
            return true;
        }
        return false;

    }
}