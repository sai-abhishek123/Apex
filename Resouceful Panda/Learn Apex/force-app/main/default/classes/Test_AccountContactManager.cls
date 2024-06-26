@isTest
private class Test_AccountContactManager {
    @isTest static void myUnitTest() {
        Account testAccount = new Account(Name='Test Account');
        insert testAccount;
        List<Contact> contacts = new List<Contact>();
        contacts.add(new Contact(FirstName='John', LastName='Doe'));
        contacts.add(new Contact(FirstName='Jane', LastName='Doe'));
        contacts.add(new Contact(FirstName='Jim', LastName='Beam'));
        contacts.add(new Contact(FirstName='Jack', LastName='Daniels'));
        insert contacts;
        List<Id> contactIds = new List<Id>();
        for (Contact c : contacts) {
            contactIds.add(c.Id);
        }
        Test.startTest();
        AccountContactManager.AccountContactManager1(testAccount.Id, contactIds);
        Test.stopTest();
        List<Contact> updatedContacts = [SELECT Id, FirstName, LastName, AccountId FROM Contact WHERE Id IN :contactIds];
        for (Contact c : updatedContacts) {
            System.assertEquals(testAccount.Id, c.AccountId, 'Contact is not correctly associated with the Account');
        }
        List<Contact> contactsWithAccount = [SELECT Id FROM Contact WHERE AccountId = :testAccount.Id];
        System.assertEquals(4, contactsWithAccount.size(), 'The number of Contacts associated with the Account is incorrect');
    }
}