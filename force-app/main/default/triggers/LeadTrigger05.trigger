trigger LeadTrigger05 on Lead (before delete) {

    //Example 6: If industry is education, do not allow any user to delete the record...
    
    //in best practices: we check trigger event and operations 
    //because we can add some aother trigger events and operations later..
    //Starting the trigger by checking event and operation is best practice....
	
    if(Trigger.isBefore && Trigger.isDelete){
        
        for(Lead leadRecs : Trigger.old){ //in delete operation, there is no trigger.new:  there is trigger.old
            
            if(leadRecs.Industry == 'Education'){
                leadRecs.addError('You can not delete a record with Education industry!');
            }          
        }		        
    }   
}