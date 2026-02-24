public class AsyncQueableUseCase implements queueable {

    public static void execute(queueableContext context){
        system.debug('first queueable class');
        Id secondjobId = system.enqueueJob (new AsyncQueableUseCaseTwo(),2);
        system.debug(secondjobId);
    }
    //this class job id in anonymus window id jobidoffirst =system.enqu....
    }
   
 