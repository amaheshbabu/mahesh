trigger campareoldvalue on Account (before update)
{
for(account acc:trigger.new)
{

system.debug('..........new value......'+acc);
account accoldvalue=trigger.oldmap.get(acc.ID);


system.debug('..........oldvalueid.........'+accoldvalue);
if(acc.AccountNumber!=accoldvalue.AccountNumber)
{

acc.Type='Prospect';

}

else
{

acc.type='Other';
}

}
}