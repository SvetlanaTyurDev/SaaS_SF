trigger LeadTrigger09 on Lead (after undelete) {
    
    for (Lead w: Trigger.new){
        System.debug('Record of ' + w.Company + ' is restored');
    }
}