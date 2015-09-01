public with sharing class listcontroller1234 {



public string recid{get;set;}
    public PageReference dlerec() {
    
    list<account>lstvale=[select id,name from account where id=:recid];
    
    delete lstvale ; 
    
    PageReference ref=new PageReference ('/apex/recordpageview34');
    ref.setredirect(true);
    
    
    
 
    
        return ref;
    }





public list<account>lst{get;set;}


public listcontroller1234 ()
{
lst=[select id,name from account limit2];
}

}