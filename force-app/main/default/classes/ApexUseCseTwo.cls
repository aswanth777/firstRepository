public with sharing class ApexUseCseTwo {
   public static Decimal calculateSimpleInterest(Decimal principal,Decimal interest,Integer timeInYears){
    if(principal != null && interest != null && timeInYears != null){
    Decimal simpleInterest=(principal*interest*timeInYears)/100;
    return simpleInterest;
    }
    return 0;
   }  
  
}