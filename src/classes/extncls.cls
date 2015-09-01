public with sharing class extncls {

public list<account>lst{get;set;}

public extncls (){
lst=[select id,name from account limit 2];
}

}