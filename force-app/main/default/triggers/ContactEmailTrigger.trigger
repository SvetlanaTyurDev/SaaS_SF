trigger ContactEmailTrigger on Contact (after insert) {

    
    	//When a Contact is inserted, send an email to the Contact
    	//to inform that record is created on Salesforce EcoSystem!

    if(Trigger.isAfter && Trigger.isInsert){
        
        ContactEmailTriggerHandler.sendEmailNotification(Trigger.new);
        
    }
		
}