trigger TaskTrigger on Task (after update) {
    if(Trigger.isUpdate && Trigger.isAfter){
        AsyncFutureUseCase.handleTaskCheckBoxUpdate(Trigger.new);
    }

}