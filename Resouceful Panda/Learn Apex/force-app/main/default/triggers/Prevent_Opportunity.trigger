// Write a trigger on the Opportunity object that prevents an Opportunity from being marked as "Closed Won" if the 
// "Expected Revenue" is not greater than zero.

trigger Prevent_Opportunity on Opportunity (before insert,before update) {
    for(Opportunity o:Trigger.new) {
        if((o.ExpectedRevenue==null || o.ExpectedRevenue<0) && o.StageName=='Closed Won') {
            o.addError('Cannot be marked as Closed Won');
        }
    }
}