@istest
private class TestOpp {
static testMethod void myUnitTest() {

    Opportunity o = new Opportunity ();
    o.StageName = 'abc';
    insert o;
  } 
}