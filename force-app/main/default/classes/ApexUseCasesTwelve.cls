public with sharing class ApexUseCasesTwelve {

public static List<task> tasksCreated(){
return [SELECT Id,CreatedDate FROM Task WHERE CreatedDate=TODAY ORDER By CreatedDate DESC LIMIT 5];

}


}
