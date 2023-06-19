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
@isTest
public class TodoListControllerTests {
    @TestSetup
    static void makeData() {
        List<Todo__c> todoList = new List<Todo__c>();

        for (Integer i = 0; i < 10; i++) {
            Todo__c t = new Todo__c();
            t.Name = 'Test ' + i;
            t.IsTracked__c = true;
            t.Status__c = 'Open';
            t.ClosedDate__c = Date.today();
            t.Type__c = 'Account';
                       
            todoList.add(t);
        }

        insert todoList;
    }

    @isTest
    public static void testGetTodoList() {
        List<Todo__c> todoList = TodoListController.getTodoList();

        System.assertEquals(10, todoList.size());
    }
}