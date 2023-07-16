public class Practice1 {
 public static void queryTask(){
        List<Contact> myList= [SELECT Account.Name, Account.Rating, Name, Department, Title, (SELECT CaseNumber, Subject FROM Cases)FROM Contact];
     System.debug(myList);
for (Contact w:myList){
            System.debug(w);
}
for (Contact w:myList){
            System.debug('Account Name: ' + w.Account.Name + ', Account Rating: ' + w.Account.Rating);
}
     for (Contact w:myList){
     for (Case k:w.Cases){
            System.debug('Case Number: ' + k.CaseNumber + ', Case Subject: ' + k.Subject);
}
     }}}