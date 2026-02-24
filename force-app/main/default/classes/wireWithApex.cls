public with sharing class wireWithApex {
    @AuraEnabled(cacheable=true)
    public static list<case> getCases(){
        return [SELECT Id,Subject,Reason,Status FROM Case ORDER BY CreatedDate Desc LIMIT 10];
    }
}