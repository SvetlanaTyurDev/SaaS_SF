trigger LeadTrigger08 on Lead (before delete, before insert, before update, after insert, after update, after undelete) {
    
 		   //Example 9: When a lead record is being deleted, 
 		   //use company name to print "the record is deleted..."
			
    //before delete & trigger old will be used...
    
    if(Trigger.isBefore && Trigger.isDelete){
        for(Lead w : Trigger.old){
            
            System.debug('The record with ' + w.Company + ' company name is deleted!');
        }
        
    }
 
}