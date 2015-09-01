trigger tg1 on Account (after update)
{

Account acc= trigger.new[0];

if(trigger.isinsert && trigger.isafter)
{
contact c = new contact();
c.lastname=acc.name;
c.accountid= acc.id;
insert c;

}

}