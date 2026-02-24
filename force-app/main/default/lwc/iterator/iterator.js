import { LightningElement } from 'lwc';

export default class Iterator extends LightningElement {


taskList=[
    {taskId:1,taskName:'prepare video',taskPriority:'high',taskProgress:'in progress'},
    {taskId:2,taskName:'record tutorial',taskPriority:'medium',taskProgress:'pending'},
    {taskId:3,taskName:'edit and upload',taskPriority:'low',taskProgress:'pending'}
   
];

}