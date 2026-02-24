public with sharing class ApexUseCaseTwentyNine {
   public static  List<String> retrieveRecordTypes(String sobjectName){
        List<String>recordTypeNames=new List<String>();

       //  List<RecordType> recordTypes = [SELECT Id, DeveloperName FROM RecordType WHERE sObjectType=:sobjectName];
        // for (RecordType rT: recordTypes) {
         // recordTypeNames.add(rT.DeveloperName);
        // }
         // return recordTypeNames;

//2nd way to do by schema
       Map<String, Schema. RecordTypeInfo> recordTypeInfos = Schema.getGlobalDescribe().get(sobjectName).getDescribe().getRecordTypeInfosByDevelopertName();
       for(String devName: recordTypeInfos.keySet()) {
       if (devName != 'Master') {
       recordTypeNames.add(recordTypeInfos.get(devName).getName());
       }
      }
    return recordTypeNames;
   }
}