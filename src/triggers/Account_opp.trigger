trigger Account_opp on Account (after insert) {

list<opportunity> opplist = new list<opportunity>();
for(Account a : trigger.new)
{
if(a.id!=null)
{
opportunity op = new opportunity();
op.name = a.name;
op.accountid = a.id;
op.closedate = system.today();
op.StageName = 'Qualification';
opplist.add(op);
}
}
if(opplist.size()>0)
{
insert opplist;
}
}