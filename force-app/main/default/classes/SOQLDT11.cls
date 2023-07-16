public class SOQLDT11 {
 Public static void newAccountRecords(){
       List <Account> accounts= new List<Account> ();
            for(integer i=1; i<7; i++){
                Account acc= new Account(Name ='Account'+ i);
             accounts.add(acc);
             }
     insert accounts;
     System.debug(accounts);
     
     }
    public static void updateRatingField(){
        List <Account> accToUpdate=[SELECT Id, Name FROM Account WHERE Name LIKE 'Acc%'];
        for (Account w: accToUpdate){
            w.Rating='Hot';
        }
        update accToUpdate;
        System.debug(accToUpdate);
       }
 public static void insertOtherAcc(){ //insert 5 other records with Rating 'Warm'
        
        
        List<Account> accounts = new List<Account>();
        for(Integer i=7; i<12; i++){
             Account acc = new Account(Name = 'Account' +i, Rating='Warm'); 
           accounts.add(acc);  
        } 
        Database.insert(accounts);
        
 }public static void displayRecordsByCategory(String enterCategory){
       List<Account> myQuery = new List<Account>();
        
        
        if(enterCategory.equals('Category1')){
          myQuery = [SELECT Name, Rating, Industry FROM Account WHERE Rating='Hot' AND  CreatedDate >= YESTERDAY];
            
        }else if(enterCategory.equals('Category2')){
            
           myQuery = [SELECT Name, Rating, Industry FROM Account WHERE Rating='Warm' AND  CreatedDate >= YESTERDAY];
        
        }else if(enterCategory.equals('Category3')){
            
             myQuery = [SELECT Name, Rating, Industry FROM Account WHERE Name LIKE 'Acc%'  AND  CreatedDate >= YESTERDAY];
        }else if(enterCategory.equals('Category4')){
            myQuery = [SELECT Name, Rating, Industry FROM Account WHERE CreatedDate >= YESTERDAY AND (NOT Name LIKE 'Acc%')];
        }else{
            System.debug('Please enter a valid category!');
        }
     for(Account w : myQuery){
            System.debug('Account Name is ' + w.Name + 
                        ' - ' + 'Account Rating is ' + w.Rating +
                        ' - ' + 'Account Industry is ' + w.Industry);
        }
        
    }
}