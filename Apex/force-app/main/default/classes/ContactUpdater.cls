// Create a method updateContactPhoneNumbers that takes a list of Contact Ids and a new phone number as parameters. 
// The method should update the Phone field of each Contact with the given phone number.

public with sharing class ContactUpdater {
    public static void updateContactPhoneNumbers(List<Id> contactIds, String newPhoneNumber) {
        // Your code here
        for(Contact c:contactIds) {
            c.Phone=newPhoneNumber;
        }
        update contactIds;
    }
}
