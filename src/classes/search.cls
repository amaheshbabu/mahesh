public with sharing class search {

    public PageReference newrec() {
    pageReference pg = new pageReference('/apex/Alphabetic1');
    pg.setredirect(true);
    
        return pg;
    }


    public list<Account> sub { get; set; }

    public String searchname { get; set; }

    public list<String> lstsearch { get; set; }
    public string lst{set;get;}

    public PageReference searchrec() {
    lst = lst+'%';
    string query='select id,name from account where name like \''+lst+'\'';
    sub=database.Query(query);
    
        return null;
    }


    public String search { get; set; }
    public search (){
    
    lstsearch =new list<string>{'A', 'B' ,'C', 'D','E', 'F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','Others','All'};
    sub=[select id,name from account];
    }
}