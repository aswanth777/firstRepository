public with sharing class ApexUseCaseTwentyFive {
  public static List<Case> returnMergedList(String queueName1,String queueName2){

List<Case>mergedList=new List<Case>();
List<Case> escalationRecords = [SELECT Id FROM Case WHERE Owner.Name =: queueName1];
List<Case> slaRecords = [SELECT ID FROM Case WHERE Owner.Name =: queueName2];

mergedList.addAll(escalationRecords);
mergedList.addAll(slaRecords);

return mergedList;
  }
}
//use set to avoid duplicate