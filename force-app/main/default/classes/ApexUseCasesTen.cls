public with sharing class ApexUseCasesTen {
  public static String checkPlantType(String plantName){
  String plantType='Not Specified';
List<Plant_Information_Master__mdt>plantList=[SELECT Id,MasterLabel,plant_type__c FROM Plant_Information_Master__mdt WHERE MasterLabel=:plantName LIMIT 1];
if(plantList.size()>0){
   return plantList[0].plant_type__c;
  
  }
  return plantType;
}
}