public with sharing class listcontroller {

    //public String conlist { get; set; }


public list<account>lst{get;set;}

public listcontroller()
{
lst=[select id,name from account limit 2];
}

}