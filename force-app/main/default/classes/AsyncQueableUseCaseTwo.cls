public  class AsyncQueableUseCaseTwo implements queueable {

    public static void execute(queueableContext context){
        system.debug('called from queable two');
    }
  
}
