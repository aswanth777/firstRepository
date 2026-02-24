public with sharing class ApexUseCasesNine {
    public static String generation(Integer dateOfBirth){
        String genType='';
if(dateOfBirth!=null){
    if(dateOfBirth>=1980 && dateOfBirth<1994){
        genType='millenial';
    }
    else if(dateOfBirth>=1995 && dateOfBirth<=2009){
        genType='Gen z';

    }
    else if (dateOfBirth>=2010 && dateOfBirth<=2024){
        genType='Gen Alpha';

    }
}
return genType;

    }
}