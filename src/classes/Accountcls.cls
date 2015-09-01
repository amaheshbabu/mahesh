public with sharing class Accountcls {

    public PageReference recsave() {
    Account ac = new Account();
    ac.name=Accountname;
    insert ac;
    
    pageReference pg = new pageReference('/apex/Alphabetic');
    pg.setredirect(true);
        return pg;
    }


    public String Accountname { get; set; }
}