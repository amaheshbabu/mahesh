public with sharing class wrpdelcntrl {

    

    list<id> lstid=new list<id>();

    public PageReference wrpdelrec() {
    
         for(delwrp a:lstwrp )
         {
             if(a.check==true)
             {
                 lstid.add(a.ac.id);
             }
         }
    
     list<account> aclst= [select id, name from Account where id in :lstid];
     delete aclst;
    
    pageReference ref= new pageReference('/apex/wrpclspage');
     ref.setredirect(true);
     return ref;
     //  return null;
    }


    public list<delwrp> lstwrp { get; set; }
    
    public class delwrp
    {
        public Account ac{set;get;}
        public boolean check{set;get;}
        public delwrp(Account b,boolean c)
        {
            ac=b;
            check=c;
        }
    }
    
    public wrpdelcntrl ()
    {
        lstwrp = new list<delwrp>();
        list<Account> aclst=[select id, name from Account];
        for(Account acc:aclst)
        {
            lstwrp.add(new delwrp(acc,false));
        } 
        }
}