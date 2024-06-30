// Write an Apex trigger that prevents the deletion of any Contact record if it is associated with an Account.

trigger Prevent_Contact_when_Account_isPresent on Contact (before delete) {
    for(Contact c:Trigger.old) {
        if(c.AccountId!=null) {
            c.addError('Cannot delete contact which has a related account');
        }
    }
}