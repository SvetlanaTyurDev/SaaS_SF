public class AccountProcessor {
    @Future
    public static void countContacts(List<Id> accountIds){
        List<Account> accounts=[SELECT Id, Number_of_Contacts__c, (SELECT Id FROM Contacts) 
                                     FROM Account WHERE Id IN:accountIds];
        for(Account acc: accounts){
            acc.Number_of_Contacts__c=acc.Contacts.size();  
        }
        update accounts;
    }
}