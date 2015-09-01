trigger Duplicatename on Account (before insert,before update) {
map<string,Account> a = new map<string,Account>();

for(Account a1 : trigger.new)
{
a.put(a1.Name,a1);
}
for(Account a2 : [select id,name from Account where name in :a.keyset()])
{
Account a3 = new Account();
a3=a.get(a2.name);
a3.name.addError('Name already exist');

}
}