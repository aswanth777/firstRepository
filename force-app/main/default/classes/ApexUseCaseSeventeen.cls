public with sharing class ApexUseCaseSeventeen {
   public static List<Integer> maxAndMin(List<Integer>listOfNumbers){
List<Integer>minAndMaxList=new List<Integer> (); 
if(listOfNumbers.size()>0){

Integer minNumber=listOfNumbers[0];
Integer maxNumber=0;
    for(Integer eachNum:listOfNumbers){
        if(eachNum>=maxNumber){
            maxNumber=eachNum;
        }
        if(eachNum<=minNumber){
            minNumber=eachNum;

    }
    minAndMaxList.add(maxNumber);
    minAndMaxList.add(minNumber);
}
    
   }
   return minAndMaxList;
}
}