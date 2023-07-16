trigger LeadTrigger4 on Lead (before insert, before update) {
    
    //Example 5: When a new lead record is about to be created or updated, 
    // and if industry is empty, populate an error message... : Industry can not be empty!
    
    for(Lead leadRec : Trigger.new){
        if(String.isBlank(leadRec.Industry)){
            
            leadRec.Industry.addError('Industry field can not be empty!');
            
        }
    }

}
//NOTE: addError() method is used to populate an error message when we do an operation in UI part....