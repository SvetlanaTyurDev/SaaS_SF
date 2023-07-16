trigger LeadTrigger02 on Lead (before insert, before update) {
for (Lead w:Trigger.new){
        if(string.isBlank(w.Industry)){
            w.Industry='Education';
        }
        

}}