public with sharing class AccountContactManager {
    public static void AccountContactManager1(Id aid, List<Id> contactId) {
        List<Contact> cids=[Select Id, Name, AccountId from Contact where Id=:contactId];
        for(Contact c:cids) {
            c.AccountId=aid;
        }
        update cids;
    }
}