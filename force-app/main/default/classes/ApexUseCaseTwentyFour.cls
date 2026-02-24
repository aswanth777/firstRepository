public with sharing class ApexUseCaseTwentyFour {
   public static Account findMaxRev(){

    List<Account>accountList=[SELECT Id,Name,AnnualRevenue FROM Account wHERE AnnualRevenue !=null ORDER BY AnnualRevenue DESC LIMIT 1];
    if(accountList.size()>0){
        return accountList[0];
    }else{
        return null;
    }
   }
}