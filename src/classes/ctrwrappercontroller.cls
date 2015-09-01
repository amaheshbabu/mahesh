public with sharing class ctrwrappercontroller {

list<id>lstid=new list<id>();



    public PageReference deleterec() {
    
    for(deletewrap w:lstwrap )
    {
    if(w.check==true)
    {
    lstid.add(w.acc.id) ;
    }
    }
    
    list<account>lstval=[select id,name from  account where id in:lstid];
    
    delete lstval;
    
    pageReference ref = new pageReference('/apex/wrapperdeleteoptionwithcheckbox');
    
  ref.setRedirect(true);
   
    
    
    
        return ref;
    }


    public list<deletewrap> lstwrap { get; set; }
    
    
    
    
    public class deletewrap
    {
    public account acc{get;set;}
    public boolean check{get;set;}
    
    public deletewrap(account a,boolean b)
    {
    acc=a;
    check=b;
    }
    
    }
    
    
    public ctrwrappercontroller ()
    {
    lstwrap =new list<deletewrap>();
    list<account>lstw=[select id,name from account];
    for(account ac:lstw)
    {
    
   lstwrap.add(new deletewrap(ac,false));
    }
    
    
    }
    
    
    
    
}