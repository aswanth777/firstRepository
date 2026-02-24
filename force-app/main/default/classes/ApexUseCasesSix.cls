public  class ApexUseCasesSix {
    public static Boolean votingEligiblity(Date dateOfBirth){
        Date todaysDate=System.today();
        
        Integer approxAge=(dateOfBirth.daysBetween(todaysDate)/365);
        if(approxAge>18){
            return true;
        }

       return false;
        }

    }
  
