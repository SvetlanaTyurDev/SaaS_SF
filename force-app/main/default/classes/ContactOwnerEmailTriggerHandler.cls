public class ContactOwnerEmailTriggerHandler {
    
    
    public static void sendEmailToContactOwner(List<Contact> conList){
        
          List<Messaging.Email> emailList = new List<Messaging.Email>();//many emails can be sent if many contacts are inserted!
        
        Set<Id> ownerIds = new Set<Id>(); //to fetch owner Ids from database, first store Ids and go to the database
        for(Contact con : conList){
           ownerIds.add(con.OwnerId);
        }
        
      Map<Id, User> ownerMap  = new Map<Id, User>([Select Id, Email, FirstName FROM User WHERE Id IN:ownerIds]); // I have owner User and Email address in my Map's value part.
        

        for(Contact con : conList){
            
            User owner = ownerMap.get(con.OwnerId);
            
                   if(owner.Email != null){
                
                Messaging.SingleEmailMessage emailMsg = new Messaging.SingleEmailMessage();
                
                String[] toAdress = new String[]{owner.Email}; //put email into string array
                emailMsg.setToAddresses(toAdress);
                
                String emailSub = 'Welcome ' + con.FirstName + '!';
                emailMsg.setSubject(emailSub);
                
                String disName = 'Mathias DT';
                emailMsg.setSenderDisplayName(disName);
                
                String content = 'Hi ' + con.FirstName +  ', <br/> <br/>' + 
                    			
                    			'Welcome to the Salesforce EcoSystem! <br/> ' +
                   				'Your record is created successfully! <br/> ' +
                    			'Study hard in your Salesforce Journey! <br/> ' + 
                    			'Happy Learning! <br/> ' + 
                    			'Thank You! <br/>  ';
                
               emailMsg.setHtmlBody(content); 
                
               emailList.add(emailMsg);
                
            }
            
        } 
         Messaging.sendEmail(emailList);
    }

}