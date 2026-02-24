import { createElement } from '@lwc/engine-dom';
import ChildToTrigger from 'c/childToTrigger';

describe('c-child-to-trigger', () => {
    afterEach(() => {
        // The jsdom instance is shared across test cases in a single file so reset the DOM
        while (document.body.firstChild) {
            document.body.removeChild(document.body.firstChild);
        }
    });

    it('should render the component with correct title', () => {
        // Arrange
        const element = createElement('c-child-to-trigger', {
            is: ChildToTrigger
        });

        // Act
        document.body.appendChild(element);

        // Assert
        const card = element.shadowRoot.querySelector('lightning-card');
        expect(card.title).toBe('child Component');
    });

    it('should render the button with correct label', () => {
        // Arrange
        const element = createElement('c-child-to-trigger', {
            is: ChildToTrigger
        });

        // Act
        document.body.appendChild(element);

        // Assert
        const button = element.shadowRoot.querySelector('lightning-button');
        expect(button.label).toBe('publish data to parent ');
    });

    it('should dispatch custom event with correct detail when button is clicked', () => {
        // Arrange
        const element = createElement('c-child-to-trigger', {
            is: ChildToTrigger
        });

        const handler = jest.fn();
        element.addEventListener('sendproductselected', handler);

        document.body.appendChild(element);

        // Act
        const button = element.shadowRoot.querySelector('lightning-button');
        button.click();

        // Assert
        expect(handler).toHaveBeenCalled();
        const dispatchedEvent = handler.mock.calls[0][0];
        expect(dispatchedEvent.detail).toBe('geely coolrey');
        expect(dispatchedEvent.type).toBe('sendproductselected');
    });

    it('should display the selected product name after button click', () => {
        // Arrange
        const element = createElement('c-child-to-trigger', {
            is: ChildToTrigger
        });

        document.body.appendChild(element);

        // Act
        const button = element.shadowRoot.querySelector('lightning-button');
        button.click();

        // Assert
        const productDisplay = element.shadowRoot.querySelector('div.slds-m-around_medium');
        expect(productDisplay.textContent).toContain('geely coolrey');
    });

    it('should initialize with no selected product displayed initially', () => {
        // Arrange
        const element = createElement('c-child-to-trigger', {
            is: ChildToTrigger
        });

        // Act
        document.body.appendChild(element);

        // Assert
        const productDisplay = element.shadowRoot.querySelector('div.slds-m-around_medium');
        expect(productDisplay.textContent).not.toContain('geely coolrey');
    });
});