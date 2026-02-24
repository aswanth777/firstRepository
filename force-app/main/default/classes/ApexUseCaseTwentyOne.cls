public with sharing class ApexUseCaseTwentyOne {
    public static Boolean checkLeadDuplicate(Lead leadRecToCheck){

List<Lead>leadList=[SELECT Id FROM lead WHERE Id !=:leadRecToCheck.Id AND Name=:leadRecToCheck.Name AND Email=:leadRecToCheck.Email AND LeadSource=:leadRecToCheck.LeadSource ];
if(leadList.size()>0){
    return true;

    } 
    return false;
}
}