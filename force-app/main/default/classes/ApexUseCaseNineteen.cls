public with sharing class ApexUseCaseNineteen {
    public static String checkObjectType(Id recordId){
        String objectType ='';

        Map<String, Schema.SObjectType> globalDescMap =Schema.getGlobalDescribe();

        for(String eachString : globalDescMap.keySet()) {
 String keyPrefix = globalDescMap.get(eachString).getDescribe().getKeyPrefix();
         if (keyPrefix != null) {
             if (String.valueOf(recordId).startsWith(keyPrefix)) {
          objectType = eachString;
       }
    }
}



return objectType; 
    }
}