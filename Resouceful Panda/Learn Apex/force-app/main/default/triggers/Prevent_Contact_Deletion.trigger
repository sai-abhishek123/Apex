// Prevent Deletion: Write a trigger on the Account object that prevents deletion 
// if there are any related active Opportunities.

trigger Prevent_Contact_Deletion on Account (before delete) {
    for(Account a:Trigger.new) {
        List<Opportunity> opps_related=[Select Id, Name from Opportunity where AccountId=:a.Id and (StageName!='Closed Won' or StageName!='Closed Lost')];
        System.debug(opps_related);
        if(opps_related.size()>0) { 
            a.addError('Cant delete if there are active opportunities');
        }
    }

}