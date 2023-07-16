trigger LeadTrigger11 on Lead (before insert, after insert) {
    
    //Example12: When a lead record is being created;
    //if LeadSource is empty, assign 'Other', 
    //And create a task for lead record...
    //So call created records on anonymous window

    if(Trigger.isBefore && Trigger.isInsert){ // Lets say 100 lead records created.......
      
        for(Lead w : Trigger.new){
            if(String.isBlank(w.LeadSource)){
                w.LeadSource = 'Other';
                System.debug(Trigger.operationType); //we can learn which trigger type is fired....
            }
        }
        
        
    }
    //İn after trigger we use dml operations::: so we need to bulkify the data to do DML....
    
	if(Trigger.isAfter && Trigger.isInsert){ // SO 100 task should be created after 100 lead records are inserted to database...
        
       List<Task> taskList = new List<Task>();
        
        for(Lead w : Trigger.new){
            
            Task taskObj = new Task(Subject = 'New Lead Record is created...', WhoId = w.Id);
            taskList.add(taskObj);
            
        }
        insert taskList; 
       
        
        
    }
}