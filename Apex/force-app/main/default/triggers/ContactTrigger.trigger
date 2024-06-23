// Write an Apex trigger on the Contact object that automatically creates a new Opportunity whenever a Contact is 
// inserted with a Title of "Decision Maker". Set the Opportunity name to "New Opportunity for [Contact LastName]" and the 
// CloseDate to 30 days from today.

trigger ContactTrigger on Contact (before insert, before update) {
    List<Opportunity> list_of_opportunity=new List<Opportunity>();
    for(Contact c:Trigger.new) {
        if(c.Title=='Decision Maker') {
            Opportunity new_opportunity = new Opportunity();
            new_opportunity.Name='New Opportunity for '+c.LastName;
            new_opportunity.CloseDate=Date.today()+30;
            new_opportunity.StageName='Prospecting';
            list_of_opportunity.add(new_opportunity);
        }
    }
    insert list_of_opportunity;
}