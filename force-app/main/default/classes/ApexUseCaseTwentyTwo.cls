public with sharing class ApexUseCaseTwentyTwo {
   public static Boolean checkParentAccount(Contact conRecord1,Contact conRecord2){
    if(conRecord1.AccountId == conRecord2.AccountId){
        return true;
    }
    return false;
}
}