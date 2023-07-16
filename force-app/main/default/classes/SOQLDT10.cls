public class SOQLDT10 {
    public static void methodDML(){
        Account acc1=new Account (Name='Test1', Phone='00061');
        acc1.Rating='Hot';
        Database.insert(acc1);
        System.debug(acc1);
        Account acc2 = new Account (Name='Test2');
        Account acc3 = new Account (Name='Test3');
        Account acc4 = new Account (Name='Test4');
        Account acc5= new Account (Phone ='5233');
    List<Account> accList =new List <Account> {acc2,acc3,acc4,acc5};
                                    Database.insert (accList, false);
                                    System.debug(accList);       
    }
}