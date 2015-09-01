public with sharing class viewcontroller {

   public list<Account> acc {set;get;}
   public boolean cntshw {set;get;}
    public boolean actshw {set;get;}

    public viewcontroller(ApexPages.StandardController controller) {
    
    acc=[select id, name,(select lastname from contacts) contacts from Account limit 10];
    cntshw=true;
    actshw=false;

    }

public void newAccount()
{
cntshw=false;
actshw=true;

}
public void recsave()
{

}
}