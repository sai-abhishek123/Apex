@isTest
private class TestRestrictContactByName {
    @isTest static void Test1() {
        Contact c=new Contact();
        c.LastName='INVALIDNAME';
        Test.startTest();
        insert c;
        Test.stopTest();
    }
}