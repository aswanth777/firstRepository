import { LightningElement } from 'lwc';
import fetchTasksBySubject from '@salesforce/apex.TaskController.fetchTasksBySubject';
export default class ImperativeCall extends LightningElement {
taskList;
subject;
errormessage;
    handleSubjectChange(event){
        this.subject =event.target.value;
    }


    SearchTasks(){
       fetchTasksBySubject({subjectString:this.subject}) 
       .then(result => { this.taskList = result;   })

       .catch(error => {  this.errormessage =error.body.message;});
    }

}