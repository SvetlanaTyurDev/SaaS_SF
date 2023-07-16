trigger LeadTrigger on Lead (before insert) {
    
    for (Lead w:Trigger.new){
        w.Rating='Cold';
    }
}