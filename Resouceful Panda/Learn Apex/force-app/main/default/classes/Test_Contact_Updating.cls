@isTest private class Test_Contact_Updating {
    @isTest static void Test1() {
        Contact c=new Contact();
        c.LastName='Test Name';
        c.Phone='123';
        c.Email='test@example.com';
        insert c;
        Test.startTest();
        /*try {
            delete c;
            System.debug('Record has been deleted');
        }
        catch(DMLException e) {
            System.debug(e.getMessage());
            Boolean checker = e.getMessage().contains('Cannot delete');
            System.debug('Checker value '+checker);
            System.assertEquals(checker,true);
        }*/
        delete c;
        Test.stopTest();
    }
}