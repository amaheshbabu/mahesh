public with sharing class search1 {

    public list<account> lst { get; set; }

    public PageReference searchrec() {
    searchname =searchname+ '%';
    
    string stringsearch='select id,name from account where name like   \''+searchname+'\'';
  lst=database.Query(stringsearch);
        return null;
    }


    public String searchname { get; set; }
    
    public search1 ()
    {
    lst=[select id,name from account];
    }
}