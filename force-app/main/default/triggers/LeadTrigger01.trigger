trigger LeadTrigger01 on Lead (before insert) {
    for (Lead w:Trigger.new){
        if(string.isBlank(w.LeadSource)){
            w.LeadSource='Other';
        }
        

    }}