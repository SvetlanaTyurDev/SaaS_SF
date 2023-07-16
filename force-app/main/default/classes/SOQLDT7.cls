public class SOQLDT7 {

    //Example: Call Name and Rating of account records 
    //Put a limitation to display records
    //enter limitation values by method parameters...
    
    public void selectRecordInTheGivenOrder(Integer limt, Integer offs){
        
      List<Account> accounts = [SELECT Name, Rating FROM Account LIMIT :limt OFFSET :offs];
       //to make limitation values dynamic, we will create variables in method parenthesis
       //and we will bind the variables inside of the query 
       //so instead of static values, we bind method parameters into the query by ussing ":" (binding variable)
        
        System.debug(accounts);
    }
    
}
//to limit number of records to display...> LIMIT
//to skip number of records from top of the list..> OFFSET