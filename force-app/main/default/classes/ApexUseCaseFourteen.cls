public class ApexUseCaseFourteen {
    public static List<Integer> findNumSeries(Integer endNum){
List<Integer>finalResult=new  List<Integer>();
        Integer m=0,n=1;
        finalResult.add(m);
        finalResult.add(n);
        for(Integer i=0; i<=endNum;i++){
            Integer nextNum=m+n;
            if(nextNum>=endNum){
                break;
            }
            m=n;
            n=nextNum;
            finalResult.add(nextNum);
        }
        return finalResult;
    }
  
}