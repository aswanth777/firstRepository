import { LightningElement, wire } from 'lwc';
import gettask from '@salesforce/apex/WireWIthApexWithInput.gettask';
export default class WireWIthApexWIthInput extends LightningElement {

    taskList;
    subjectText = '';

    @wire(gettask, { subjectString: '$subjectText' })
    wireTasks({ data, error }) {
        try {
            if (data) {
                this.taskList = data;

            }
            if (error) {
                console.log('error occured' + error.body.message);
            }

        }
        catch (error) {
            console.log('error occured' + error.body.message);

        }
    }
}