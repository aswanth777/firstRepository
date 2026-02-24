public  class ApexUseCaseThirteen {
    public static String findName(String emailAddress){
       String fullName='';
       String extractedStringString=emailAddress.substringBefore('@');
       if(String.isNotBlank(extractedStringString)){
        List<String>splittedString=extractedStringString.split('_');
        if(splittedString.size()>2){

            fullName=splittedString[0] + ''+splittedString[1];
       }

        
    }
    return fullName;
   
}
}