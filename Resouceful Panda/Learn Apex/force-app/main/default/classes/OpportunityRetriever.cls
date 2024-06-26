//Create a method getOpportunitiesForAccount that takes an Account Id as a parameter and returns a list of Opportunities
// associated with that Account. The method should only return Opportunities that are currently in the "Closed Won" stage.

public class OpportunityRetriever {
    public static List<Opportunity> getOpportunitiesofAccount(Id accId) {
        List<Opportunity> list_of_opportunity=[Select Id, Name, StageName, AccountId from Opportunity where AccountId=:accId and StageName=:'Closed Won'];
        return list_of_opportunity;
    }
}