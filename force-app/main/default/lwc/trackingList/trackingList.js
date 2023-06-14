/**
 * @description       : 
 * @author            : Ed Elliott
 * @group             : 
 * @last modified on  : 06-14-2023
 * @last modified by  : Ed Elliott
 * Modifications Log
 * Ver   Date         Author       Modification
 * 1.0   06-14-2023   Ed Elliott   Initial Version
**/
import { LightningElement, track, wire} from 'lwc';
import getTrackingList from '@salesforce/apex/TrackingListController.getTrackingList';

export default class TrackingList extends LightningElement {
     @track columns = [
          { label: 'Name', fieldName: 'Name'},
          { label: 'Id', fieldName: 'Id'},
          { label: 'Status', fieldName: 'Status__c'},
          { label: 'Type', fieldName: 'Type__c'},
          { label: 'Is Tracked', fieldName: 'IsTracked__c'},
      ];
     @track trackingList;

    //Method 2
    @wire(getTrackingList) wiredTrackingList ({ error, data }) {;
        if (data) {
            this.trackingList = data;
            console.log(data); 
        } 
        else if (error) {
            console.log(error);
        }
    }
}