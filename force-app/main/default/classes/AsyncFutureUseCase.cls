public class AsyncFutureUseCase {
    //when a task is completed, update  the "task done" checkbox on the task owners record.

   public static void handleTaskCheckBoxUpdate(List<task>newRecords){
    List<string>ownerIds = new List<string>();
    for(Task eachTask:newRecords){
        if(eachTask.status == 'completed'){
            //cz in fututre we cant pass task list
            ownerIds.add(eachTask.ownerId);

        }
    }
updateUserFlag(ownerIds);
   }
@future
   public static void updateUserFlag(List<string>ownerIds){
    //query all users with this ownerids
    List<user>userList = [SELECT Id , Task_Done__c FROM user WHERE Id IN : ownerIds];
    //create a checkbox on user ,task done.
    for(user eachUser:userList){
        eachUser.Task_Done__c = true;
    }
update userList ;
   }

}