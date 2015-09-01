public with sharing class OppSt {

public List<string> Opp{get;set;}

public static list<string> oppstm(){
    list<string> Opp = new list<string>();
    Schema.DescribeFieldResult fieldResult = Opportunity.StageName.getDescribe();
    SObjectType accountType = Schema.getGlobalDescribe().get('Opportunity');
    Map<String,Schema.SObjectField> mfields = accountType.getDescribe().fields.getMap();

    List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
    for( Schema.PicklistEntry f : ple)
    {
        Opp.add(f.getLabel());
    } 
    system.debug('============='+Opp); 
    return Opp;  
}

}