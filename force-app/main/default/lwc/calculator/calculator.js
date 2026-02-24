import { LightningElement, track } from 'lwc';

export default class Calculator extends LightningElement {
    @track firstNumber = 0;
    @track secondNumber = 0;
    @track result = 0;

    handleNumberChange(event) {
        const field = event.target.name;
        if (field === 'firstNumber') {
            this.firstNumber = parseFloat(event.target.value) || 0;
        } else if (field === 'secondNumber') {
            this.secondNumber = parseFloat(event.target.value) || 0;
        }
    }

    handleAdd() {
        this.result = this.firstNumber + this.secondNumber;
    }

    handleSubtract() {
        this.result = this.firstNumber - this.secondNumber;
    }

    handleMultiply() {
        this.result = this.firstNumber * this.secondNumber;
    }

    handleDivide() {
        if (this.secondNumber !== 0) {
            this.result = this.firstNumber / this.secondNumber;
        } else {
            this.result = 'Cannot divide by zero';
        }
    }
}