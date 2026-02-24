public with sharing class ApexUseCasesEight {
    public static Boolean Divisible(Integer numberToCheck){
        if(Math.mod(numberToCheck,7)==0 && Math.mod(numberToCheck,11)==0){
            return true;
    }
return false;
}
}