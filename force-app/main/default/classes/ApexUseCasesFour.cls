public with sharing class ApexUseCasesFour {
    public static  List<String> returnContactEmail(String accountName){
        List<String>emailList = new  List<String> ();

        List<Contact>conList=[SELECT Id,Email FROM Contact WHERE Account.Name=:accountName];
        if(!conList.isEmpty()){
        for(Contact con:conList){
            if(con.Email != null){
                emailList.add(con.Email);
            }
        }
    }
        return emailList;
    }
}