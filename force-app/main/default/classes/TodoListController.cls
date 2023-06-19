/**
 * @description       : 
 * @author            : Ed Elliott
 * @group             : 
 * @last modified on  : 06-19-2023
 * @last modified by  : Ed Elliott
 * Modifications Log
 * Ver   Date         Author       Modification
 * 1.0   06-14-2023   Ed Elliott   Initial Version
**/
public with sharing class TodoListController {
    @AuraEnabled(cacheable = true)
    public static List<Todo__c> getTodoList() {
        return [SELECT Id, Name, ClosedDate__c,
                       CreatedBy.Name, CreatedDate,
                       Description__c, Status__c,
                       Type__c, LastModifiedBy.Name,
                       LastModifiedDate, IsTracked__c
                FROM Todo__c
                ORDER BY CreatedDate DESC
                LIMIT 20];
    }
}