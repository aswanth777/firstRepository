public class TaskCreatorQueueable  implements queueable{
//creating variable for coming caselist.
    public List<case>caseRecords;

//calling cunstroctor

public TaskCreatorQueueable(List<case>caseList){
   caseRecords = caseList;
}

    public  void execute(queueableContext context){

        List<Task>tREClist=new List<Task>();
        for(Case eachCase :caseRecords){
            Task tREC = new Task();
            tREC.Subject = 'Email';
            tREC.Priority = 'Normal';
            tREC.ActivityDate =system.today()+30;
            tREC.WhatId=eachCase.Id;
            tREC.OwnerId = eachCase.OwnerId;

           tREClist.add(tREC);
        }

        if(tREClist.size()>0){
            insert tREClist;
        }


    }
   
}