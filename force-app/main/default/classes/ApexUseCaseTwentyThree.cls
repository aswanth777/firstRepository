public with sharing class ApexUseCaseTwentyThree {
    public static void reassignCase(Case caseRec){
        string queueId;
        if(CaseRec!= null){
            if(caseRec.Priority=='high' && caseRec.Origin=='web'){
               List<Group> mySLAqueue=[SELECT Id,Name,Type,DeveloperName FROM Group WHERE Type='Queue' AND DeveloperName='SLA_Queue' ];
               if(mySLAqueue.size()>0){
                 caseRec.OwnerId=mySLAqueue[0].Id;
                 update caseRec;
            }
            }
            }
        }
    } 


    
