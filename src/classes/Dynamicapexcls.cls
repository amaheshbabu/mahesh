public with sharing class Dynamicapexcls 
{
    public list<wrappercls> lst { get; set; }
    
    public class wrappercls
    {
        
        public string objname{get;set;}
        public string objtype{get;set;}
        
        public wrappercls(string s1,string s2)
        {
            objname=s1;
            objtype=s2;
          
        }
        
    }
      
    public Dynamicapexcls ()
    {
         lst=new list<wrappercls>();
         list<schema.sobjecttype> lobj= schema.getglobaldescribe().values();
         for(schema.sobjecttype s:lobj)
         {
             if(string.valueof(s).contains('__'))
               lst.add(new wrappercls (string.valueof(s),'custom object'));
             else
               lst.add(new wrappercls (string.valueof(s),'standard object'));
         }
     
    }
}