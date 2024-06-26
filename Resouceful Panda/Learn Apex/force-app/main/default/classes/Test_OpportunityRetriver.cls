@isTest
private class Test_OpportunityRetriver {
    @isTest static void Test1() {
        Account new_account=new Account();
        new_account.Name='Test Account';
        insert new_account;
        List<Opportunity> opps=new List<Opportunity>();
        opps.add(new Opportunity(Name='TestName', StageName='Closed Won',CloseDate=Date.today(), AccountId=new_account.Id));
        insert opps;
        Test.startTest();
        List<Opportunity> oppo=OpportunityRetriever.getOpportunitiesofAccount(new_account.Id);
		Test.stopTest();
        System.assertEquals(1,oppo.size(),'The size is 1');
    }
}