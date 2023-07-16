public class SOQLDT3 {
public static void queryTask(){
        List<Contact> myList= [SELECT Account.Name, Account.Rating, Account.Industry, Name, Department, Title, (SELECT Name, Amount FROM Opportunities)FROM Contact];
     System.debug(myList);
    for (Contact w:myList){
            System.debug(w);     
}
      for (Contact w:myList){
            System.debug(w+'Account Name: '+ w.Account.Name+', Account Rating: ' + w.Account.Rating+ ', Account Industry: '+w.Account.Industry);
                }
    for (Contact w:myList){
      for (Opportunity k:w.Opportunities){
            System.debug('Opportunity Name: '+ k.Name + ', Opportunity Amount: ' + k.Amount);
       
}
    }}}