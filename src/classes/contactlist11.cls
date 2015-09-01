public with sharing class contactlist11 {

    public contactlist11(ApexPages.StandardController controller) {

    }

    public string firstname1{get; set;}
    public string lastname1{get; set;} 
    public string email1{get; set;}
    public string phone1{get; set;}
    public string states{get; set;}
    public string cities{get; set;}
    
    public void save(){
        //pagereference p = new pagereference();
        contact con = new contact();
        con.firstname=firstname1;
        con.lastname=lastname1;
        con.Email=email1;
        con.phone= phone1;
        //con.Cities__c =cities ;
        //con.states__c=states;
        insert con;
        
    }
   
        
       public list<selectoption> getstates1(){
    list<selectoption> op = new list<selectoption>();
        op.add(new selectoption('AP','AP'));
        op.add(new selectoption('TN','TN'));
        return op;
      }
      public list<selectoption> getcities1(){
       list<selectoption> op = new list<selectoption>();
       if(states == 'ap'){
       op.add(new selectoption('ong','ong'));
       op.add(new selectoption('hyd','hyd'));
       }
       else if(states == 'TN')
       {
       op.add(new selectoption('chennai','chennai'));
       op.add(new selectoption('nagapatnam','nagapatnam'));
       }
       return op;
       }
        }