public class SOQLDT {
    public static void queryTask(){
        List<Account> myList= [SELECT Name, Phone FROM Account];
        
      
        System.debug(myList);
       for (Account w:myList){
            System.debug(w);
        }
        Map<Id, Account> myMap= new Map <Id, Account>([SELECT Name, Phone FROM Account]);
        System.debug(myMap);
        for (Account w:myMap.values()){
            system.debug(w);
        }
    }

}