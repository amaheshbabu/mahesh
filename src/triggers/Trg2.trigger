trigger Trg2 on Contact (before insert) {

list<Contact> ac=[select id, lastname from Contact];
for(contact c : ac)
{
if(c.lastname == c.lastname )
{

c.addError('duplicate contact');
}
}

}