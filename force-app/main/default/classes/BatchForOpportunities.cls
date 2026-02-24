public  class BatchForOpportunities implements Database.Batchable<sObject>,Database.allowcallouts,Database.stateful {
 //override 3 methods start,execute and finish

  public  Database.QueryLocator start(DataBase.BatchableContext context){
    string query ='SELECT ID FROM Opportunity WHERE StageName =\'perception analysis\' AND CLOSEDATE < LAST_N_DYAS:7';
    return DataBase.getQueryLocator(query); //THIS IS PASSD TO EXECUTE METHOD
  }


  //scope will recieve the query
  public void execute(DataBase.BatchableContext context , list<Opportunity>Scope){
        FOR (Opportunity OPP :Scope){
            system.debug(opp.name);
        }
  }

  public void finish(DataBase.BatchableContext context){
    // as soon as all chunk jobs completed finish will be called.post operation steps.
    system.debug('Finish method called');
  }
}
      
