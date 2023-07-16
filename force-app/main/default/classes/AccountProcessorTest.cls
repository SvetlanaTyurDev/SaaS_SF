@isTest
public class AccountProcessorTest {
   @testSetup // to generate new data , is gonna run first
    public static void testSetup(){}
  
      @IsTest
    Public static void countContactsTest(){
         List<Account> accList= new List<Account>();
            
           for(integer i=0; i<10; i++){
                Account acc= new Account();
                acc.Name='TestAccount' +1;
                acc.Phone='1234' +i;
                accList.add(acc);
             }
            
        insert accList;
        
        List<Contact> conList= new List<Contact>();
        List<Id> accIds= new List<Id>();
        
        for(Account acc:accList){
            Contact con = new Contact();
            con.FirstName =acc.Name;
            Con.LastName='TestContactLastName';
            con.AccountId=acc.Id;
            conList.add(con);
            accIds.add(acc.Id);
        }
        insert conList;
         
        
        
        Test.startTest();
        AccountProcessor.countContacts(accIds) ;
        Test.stopTest();
        List<Account> accounts=[SELECT Id, Number_of_Contacts__c FROM Account];
        System.assertEquals(1, accounts[0].Number_of_Contacts__c, 'Contacts are not counted correctly');
        
        
    }

}