trigger CaseTrigger on case (after update) {
    if(Trigger.isUpdate && Trigger.isAfter){
        AsyncQueableUseCaseDemo.afterUpdate(Trigger.new);
    }

}