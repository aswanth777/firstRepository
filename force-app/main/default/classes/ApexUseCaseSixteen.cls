public with sharing class ApexUseCaseSixteen {
   public static Integer sumOfnum(Integer finalNumber){
   Integer totalSum=0;

    for(Integer i=1;i<=finalNumber;i++){
        totalSum=totalSum+i;
    }

   return totalSum;
   }
}