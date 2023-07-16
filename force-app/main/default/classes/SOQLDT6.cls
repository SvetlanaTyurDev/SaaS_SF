public class SOQLDT6 {
    //Practice 5: Fetch Name, Phone, Rating for given account names
    //'GenePoint', 'Burlington Textiles Corp of America', 'sForce', 'Dickenson plc' 
        public void dataBinding(){
            //1. Way:
      List<Account> r1 =  [SELECT Name, Phone, Rating 
                                            FROM Account
                                            WHERE Name= 'GenePoint'
                                            OR Name = 'Burlington Textiles Corp of America'
                                            OR Name = 'sForce'
                                            OR Name = 'Dickenson plc'];
        System.debug(r1);
        for (Account w:r1){
            System.debug(w);
        }
            List<Account> r2 =  [SELECT Name, Phone, Rating 
                                            FROM Account
                                            WHERE Name IN ('GenePoint','Burlington Textiles Corp of America', 
                                                           'sForce', 'Dickenson plc')];
        System.debug(r2);
            
    }
}