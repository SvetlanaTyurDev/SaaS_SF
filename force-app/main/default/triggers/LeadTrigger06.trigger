trigger LeadTrigger06 on Lead (before insert, before update) {

    //Example 7: When a new lead record is being created  
    //If industry is blank, assign 'Education' to Industry : 
   
    //When a new lead record is being updated 
    //If industry is blank, assign 'Banking' to Industry : 
            
    if(Trigger.isBefore && Trigger.isInsert){ //in before insert, there is only trigger.new
        for(Lead w : Trigger.new){
            
            if(String.isBlank(w.Industry)){
                w.Industry = 'Education';
            }
        }
        
    }
    
    if(Trigger.isBefore && Trigger.isUpdate){
        
        for(Lead r : Trigger.new){ //in before update, we use trigger.new context variable...
             if(String.isBlank(r.Industry)){
                r.Industry = 'Banking';
            }
        }
                
    }
    
}