trigger LeadTrigger10 on Lead (after update) {
    
    //Example 11: When a lead record is updated, create an Account record..
    //Account name should be company name of the lead....

    
    if(Trigger.isAfter && Trigger.isUpdate){
        
        List<Account> accList = new List<Account>(); // we will add acc objects into list and then insert at once when loop is over..
        
        for(Lead w : Trigger.new){ //many lead record can be updated then be iterated in loop
            						//So many account records can be created based on the number of updated lead records
            
            Account myAcc = new Account();
            myAcc.Name = w.Company;
            accList.add(myAcc);
            
        }
        insert accList; //we used DML out of loop not to exceed governor limits...
        
    }
    
}

//Common practice is; if you work with other objects when the insert or update is done;
//You can use after trigger.
//When you are working with current record, not with another record from another object
//You can use before trigger....