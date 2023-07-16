public class SOQLDT8 {
    public void updateTheRecord(){
        String accName= 'Batch166-167 DT';
       List<Account> accList =[SELECT Id FROM Account WHERE Name=:accName];
        for (Account w: accList){
            w.Name='Batch166-167 DT updated';
            w.Phone='987654';
        }
        update accList;
        System.debug(accList);
    }
}