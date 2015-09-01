Global class Batchcls implements database.batchable<sobject>
{

    global list<account> start(database.batchablecontext bc)
    {
    list<account> lst=new list<account>();
    for(integer i=0;i<200;i++)
        {
        Account a=new Account();
        a.name='mahesh'+i;
        a.phone='9701075120';
        lst.add(a);
        }
        return lst;
    }
    global void execute(database.batchablecontext bc,list<Account> lst)
    {
        insert lst;
    }
    global void finish(database.batchablecontext bc)
    {
    list<string> lst1=new list<string>();
    lst1.add('amahesh.kspt@gmail.com');
    messaging.singleemailmessage mail= new messaging.singleemailmessage();
    mail.setsubject('batch cls');
    mail.setPlainTextBody('batch process completed');
    mail.setToAddresses(lst1);
    messaging.sendEmail(new messaging.singleemailmessage[] {mail});
    
    
    }

    
}