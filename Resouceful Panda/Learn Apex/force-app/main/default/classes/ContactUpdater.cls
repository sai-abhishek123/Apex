public class ContactUpdater {
    public static void updateContactTitles(String accountName, String newTitle) {
        List<Contact> all_contacts=[Select Id, FirstName, LastName from Contact where Account.Name=:accountName];
    }
}