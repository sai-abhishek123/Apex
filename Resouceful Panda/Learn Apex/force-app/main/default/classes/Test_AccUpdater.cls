@isTest
private class Test_AccUpdater {

    @isTest static void myUnitTest() {
        Account a=new Account();
        a.Name='Test Name';
        a.AnnualRevenue=101;
        Test.startTest();
        insert a;
        Test.stopTest();
        System.assertEquals(a.Description,'High Value','The string is \'High Value.\'');
    }
}