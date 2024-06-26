// Write an Apex class that retrieves all Account records with the Type set to "Prospect" and updates their Description field to 
// "Potential customer for future business". Then, ensure that only the Accounts where the AnnualRevenue is greater than 
// $1,000,000 are updated.

public class AccountUpdater {
    public static List<Account> retrieveAccounts(List<Account> acs) {
        List<Account> get_accounts=[Select Id, Name, Description from Account where Type=:'Prospecting' and AnnualRevenue>1000000];
        for(Account a:get_accounts) {
            a.Description='Potential customer for future business';
        }
        update get_accounts;
        return get_accounts;
    }
}