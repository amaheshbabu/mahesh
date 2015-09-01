@isTest
public class TestAccountOpportunity {
     public static testMethod void verify(){
        List<Account> accounts = new List<Account>{};
        Account a = new Account(Name = 'Test Account');
        insert a;
        Opportunity opp =new opportunity(Name='TestOpportunity',accountid=a.id,StageName='Prospecting',CloseDate=system.today(),Amount=1000);
        insert Opp; 
        a.status__c = 'Cancelled';    
        update a;
        System.AssertEquals('Closed - Cancelled', [SELECT StageName FROM Opportunity WHERE Id = :opp.Id].StageName);
    }

}