trigger accounttg on Account (after update) 
{
for(Account acc: trigger.new)
{

list<contact> c = [select id,account.BillingCity,account.BillingCountry,account.BillingState from contact ];

for(contact c1:c)
{
c1.MailingState = c1.account.BillingState;

update c;
}
}
}