public with sharing class conlist {

 public list<contact>lstcon{get;set;}

    public conlist(listcontroller controller) {
    
   
    lstcon=[select id,lastname from contact];
    

    }

}