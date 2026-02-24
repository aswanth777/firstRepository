import { LightningElement } from 'lwc';

export default class ForEachLoopComponent extends LightningElement {

    CEOList; 

    showlisthandler(){

        this.CEOList = [
             
                              {
                                id: 1,
                                name: 'mark',
                                title: 'ceo of salesforce',
                              },

                              
                              {
                                id: 2,
                                name: 'sundar',
                                title: 'ceo of google',
                              },


                              
                              {
                                id: 3,
                                name: 'zuckerberg',
                                title: 'ceo of facebook',
                              },


                              
                              {
                                id: 4,
                                name: 'jack',
                                title: 'ceo of twitter',
                              },


                              
                              {
                                id: 5,
                                name: 'jeff',
                                title: 'ceo of amazon',
                              },


                              






        ]
    }

}