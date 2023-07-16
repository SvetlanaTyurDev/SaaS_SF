public class SOQLDT9 {
    
    //fetch a record from database and delete it.
    public static void deleteTheRecord(){
        
   List<Account> accList = [SELECT Id FROM Account WHERE Phone = '987654'];
        
        delete accList; 
       //Database.delete(accList);
       //Database.delete(accList, false); > This syntax allows partial success.. if some of the records have problem, others can be updated...
       //Database.delete(accList,true); > does not allow patial success
       System.debug(accList);
    }
    
    
    public static void undeleteTheRecord(){
        //when a record is deleted; "isDeleted" field will be "true"
      List<Account> accList = [SELECT Id FROM Account WHERE isDeleted=true ALL ROWS]; //ALL ROWS mostlt is used in Undelete operation.
        undelete accList; 
        //Database.undelete(accList);
        //Database.undelete(accList, false);
        //Database.undelete(accList, true);
        
        System.debug(accList);
    }    

}