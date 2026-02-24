public with sharing class ApexUseCaseTwentyEight {
    public static map<String,List<Case>> generateCasesByOrigin(){

        map<String,List<Case>> casesByOriginMap = new map<String,List<Case>>();
        List<Case>caseRecords=[SELECT Id,Origin FROM Case LIMIT 50000 ];
    
        for(Case caseRec:caseRecords){

            //if my map has a key (already contains the case origin)
            //dont create a new list, just append the case to the current list
            //if my map does not have the key, (doesnt have the case origin),
            //create a new put entry, with a new list with this particular case record added
             if(casesByOriginMap.containsKey(caseRec.Origin)){
              casesByOriginMap.get(caseRec.Origin).add(caseRec);
             }
             else{
                List<Case> casesByOriginList = new List<Case>();
                casesByOriginList.add(caseRec);
                casesByOriginMap.put(caseRec.Origin, casesByOriginList);

             }

        }
        return casesByOriginMap;

    }
}