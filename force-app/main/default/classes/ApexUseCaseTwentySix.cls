public with sharing class ApexUseCaseTwentySix {
    public static void assingnCaseToQueue(Id caseRecId){
      // Query this case, get the ownerid field and update it with the queue which is in the custom label
      List<Group>queueInfo=[SELECT Id FROM Group WHERE Type='Queue' AND DeveloperName =:System.Label.My_Primary_Queue LIMIT 1];
       List<Case>caseToAssign=[SELECT Id,OwnerId FROM Case WHERE Id=:caseRecId LIMIT 1];
        if(caseToAssign.size()==1 && queueInfo.size()==1){
            caseToAssign[0].OwnerId= queueInfo[0].Id;
            update caseToAssign[0];
        }


}
}