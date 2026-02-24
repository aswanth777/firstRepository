public with sharing class WireWIthApexWithInput {
    @AuraEnabled(cacheable=true)
    public static List<task> gettask(string subjectString){
        return [SELECT Id,Subject,Status,Priority FROM Task WHERE Subject = :subjectString];

    }

    }
