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
@isTest
public class TrackingListControllerTests {
    @TestSetup
    static void makeData() {
        List<Tracking__c> trackingList = new List<Tracking__c>();

        for (Integer i = 0; i < 10; i++) {
            Tracking__c t = new Tracking__c();
            t.Name = 'Test ' + i;
            t.IsTracked__c = true;
            t.Status__c = 'Open';
            t.ClosedDate__c = Date.today();
            t.Type__c = 'Account';
                       
            trackingList.add(t);
        }

        insert trackingList;
    }

    @isTest
    public static void testGetTrackingList() {
        List<Tracking__c> trackingList = TrackingListController.getTrackingList();

        System.assertEquals(10, trackingList.size());
    }
}