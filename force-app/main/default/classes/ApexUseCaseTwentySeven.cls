public with sharing class ApexUseCaseTwentySeven {
   public static Set<Id> generateAccountReport(){

    Set<Id>accountList=new Set<Id>();
    List<Opportunity>OppWithGoodRevenue=[SELECT Id,Name,Amount,AccountId FROM Opportunity WHERE Amount>80000];

    for(Opportunity opp:OppWithGoodRevenue){
        accountList.add(opp.AccountId);
    }
    return accountList;
   }
}