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
public with sharing class TrackingListController {
    @AuraEnabled(cacheable = true)
    public static List<Tracking__c> getTrackingList() {
        return [SELECT Id, Name, ClosedDate__c,
                       CreatedBy.Name, CreatedDate,
                       Description__c, Status__c,
                       Type__c, LastModifiedBy.Name,
                       LastModifiedDate, IsTracked__c
                FROM Tracking__c
                ORDER BY CreatedDate DESC
                LIMIT 20];
    }
}