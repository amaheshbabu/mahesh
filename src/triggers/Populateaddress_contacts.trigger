trigger Populateaddress_contacts on Account (after update) {
set<ID> Aid = new set<ID>();
for(Account a : trigger.new)
{
if(a.id!=null)
{
Aid.add(a.id);
}
}
list<contact> conlist = [select id,lastname,accountid,otherstreet,othercity,otherstate,othercountry,otherpostalcode from contact where accountid in :Aid];
for(contact c : conlist)
{
Account ac = trigger.newMap.get(c.Accountid);
c.otherstreet = ac.billingstreet;
c.othercity = ac.billingcity;
c.otherstate = ac.billingstate;
c.othercountry = ac.billingcountry;
c.otherpostalcode  = ac.billingpostalcode;
}

if(conlist.size()>0)
update conlist;

}