public class return_Accounts {
    public List<Account> return_Technology() {
        List<Account> list_of_accounts=[Select Id, Name from Account where Industry=:'Technology'];
        return list_of_accounts;
    }
}