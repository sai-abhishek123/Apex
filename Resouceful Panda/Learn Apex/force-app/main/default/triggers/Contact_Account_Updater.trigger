trigger Contact_Account_Updater on Contact (after insert, after update) {
    Set<Id> account_ids=new Set<Id>();
    for(Contact c:Trigger.new) {
        if(c.AccountId!=null) {
            account_ids.add(c.AccountId);
        }
    }
    List<Account> account_list=[Select Id, Account_Type__c, (Select Id from Contacts) from Account where Id in :account_ids];
    // System.debug(account_list);
    for(Account a:account_list) {
        a.Account_Type__c='Hello';
    }
    update account_list;
}