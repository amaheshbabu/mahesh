trigger Trg1 on Contact (before update) {

for(contact c : trigger.new)
{
contact c1 = trigger.oldMap.get(c.id);
if(c.Email != c1.Email)
{
c.Email.addError('Email cannot be changed');
}
}
}