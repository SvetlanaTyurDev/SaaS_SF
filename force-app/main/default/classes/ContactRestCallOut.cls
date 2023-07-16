public class ContactRestCallOut {
    
    public static void getContacts(String userId){
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://jsonplaceholder.typicode.com/users/'+ userId);
        request.setMethod('GET');
        
        HttpResponse response = http.send(request);
        
        if(response.getStatusCode() == 200){ //when response is success, body is coming...
            
            //send the bodyc to parse class and get the converted version into apex from parser class...
            RestContactParser myContact = RestContactParser.parse(response.getBody());
            
            System.debug(myContact.name);
            System.debug(myContact.email);
            System.debug(myContact.Company.name); //take the data from  subclass of perser class..
            
           Contact con = new Contact();
            
            con.LastName = myContact.name;
            con.Email = myContact.email;
            insert con;
        }
        
    }

}