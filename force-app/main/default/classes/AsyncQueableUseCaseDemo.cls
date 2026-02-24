public  class AsyncQueableUseCaseDemo {

    public static void afterUpdate(List<case>caseRecords){
        List<case>caseList=new  List<case>();
        for(Case eachCase:caseRecords){
            if(eachCase.Status=='escalated'){
                caseList.add(eachCase);
    }
   
}
if(!caseList.isEmpty()){
    //calling queueable
    //using parameterised constructor so call it in in queueable class
    system.enqueueJob(new TaskCreatorQueueable(caseList));
}
    }
}