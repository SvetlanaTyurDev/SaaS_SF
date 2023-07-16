trigger AccountTrigger on Account (after update, before delete) {
    
    //When an Account City Field is updated, 
    //update the City Field of the child contactwith the same value of parent
    if(Trigger.isAfter && Trigger.isUpdate){
        
        Set<Id> accIds = new Set<Id>(); //Account Id's will be held in Set to go child easily.
    
        for(Account acc : Trigger.new){
           
            //trigger will be fired when the city value is really changed. it will not work on any update operation..
            if(acc.BillingCity != Trigger.oldMap.get(acc.Id).BillingCity){ //if new and old value of BillingCity is different from each other, it means field is updated..
                
                          accIds.add(acc.Id);
            }
            
            //we will call contact records whose accountId's are stored in Set above.
            List<Contact> conList = [SELECT Id, MailingCity, Account.BillingCity FROM Contact WHERE AccountId IN: accIds];
            
            
            for(Contact w : conList){
                
                w.MailingCity = w.Account.BillingCity; //assign updated Account BillingCity into the MailingCity of Contact...
            }
            update conList;
        }
    
    }
    
    
    
     //If there is a child contact in Account record, 
    //and if the user tries to delete the account,
    //populate an error message to the user..
    
    if(Trigger.isBefore && Trigger.isDelete){
        
        Set<Id> accIds = new Set<Id>();
        
        //Collect the Account Ids in the set to take a look if there is any child in accounts
        for(Account acc : Trigger.old){
            accIds.add(acc.Id);
        }
        
        
        
        List<Contact> conList = [SELECT Id, AccountId FROM CONTACT WHERE AccountId IN: accIds];
        
        //following syntax is just for before delete operation...
        for(Contact w : conList){
           
		Account acc = new Account();   	//That will represent the Account record that user tries to delete
            							//and by the help of newly created account object, message will be populated on account level
            
           acc = Trigger.oldMap.get(w.AccountId); //now in my newly created account object: I have my account record to be deleted...
            
            acc.addError('If there is a related Contact record, the Account record can not be deleted!');
        }
        
    }
    
    
}