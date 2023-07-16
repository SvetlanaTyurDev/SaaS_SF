public class ContactEmailTriggerHandler {

    public static void sendEmailNotification(List<Contact> conList){
        
        List<Messaging.Email> emailList = new List<Messaging.Email>();//many emails can be sent if many contacts are inserted!
        
        for(Contact con : conList){
            
            if(con.Email != null){
                
                Messaging.SingleEmailMessage emailMsg = new Messaging.SingleEmailMessage();
                
                String[] toAdress = new String[]{con.Email}; //put email into string array
                emailMsg.setToAddresses(toAdress);
                
                String emailSub = 'Welcome ' + con.FirstName + '!';
                emailMsg.setSubject(emailSub);
                
                String disName = 'Mathias DT';
                emailMsg.setSenderDisplayName(disName);
                
                String content = 'Hi ' + con.FirstName +  ', <br/> <br/>' + 
                    			
                    			'Welcome to the Salesforce EcocSystem! <br/> <br/> ' +
                    			'Study hard in your Salesforce Journey! <br/> <br/>' + 
                    			'Happy Learning! <br/> <br/>' + 
                    			'Thank You! <br/> <br/> ';
                
               emailMsg.setHtmlBody(content); 
                
                emailList.add(emailMsg);
                
            }
            
        }
        Messaging.sendEmail(emailList);
    }
   
}