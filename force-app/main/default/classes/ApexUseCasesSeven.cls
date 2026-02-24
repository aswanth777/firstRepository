public with sharing class ApexUseCasesSeven {
 public static Decimal splitBill(Decimal billAmount,Integer numberOfPeople){
Decimal splitPerPerson=0;
if(numberOfPeople>0 && billAmount>0){
splitPerPerson=billAmount/numberOfPeople;
 }
return splitPerPerson;
 }
}