/**
 * @description       : 
 * @author            : Ed Elliott
 * @group             : 
 * @last modified on  : 06-13-2023
 * @last modified by  : Ed Elliott 
 * Modifications Log
 * Ver   Date         Author       Modification
 * 1.0   06-13-2023   Ed Elliott   Initial Version
**/
import { LightningElement } from 'lwc';
export default class HelloWorld extends LightningElement {
  greeting = 'World';
  changeHandler(event) {
    this.greeting = event.target.value;
  }
}