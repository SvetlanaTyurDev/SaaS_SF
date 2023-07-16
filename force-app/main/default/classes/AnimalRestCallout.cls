public class AnimalRestCallout {
    public static void getAnimals(){
        
        Http httpDT = new Http(); //just like click on new on Postman
        HttpRequest request = new HttpRequest(); //just like http button on Postman
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');//set endpoint
        request.setMethod('GET'); //selected the method...
        
        HttpResponse response = httpDT.send(request); //send the request and assign the response into the response object
    
    
        if(response.getStatusCode() == 200){ //when the result is successfully coming, I can convert data from unknown to Apex...
         
           /* 1.way:
           //do casting operation on the right part; convert from json to apex...
           //and assign into a map structure after casting..
      
        Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            
         List<Object>  animalsList = (List<Object>) results.get('animals');
            
            for(Object w : animalsList){
                System.debug(w);
            }
             */ 
            
            //Best practice is parsing the data in another class...
            //2nd way to convert from json to apex: use another class for parsing operation...
            //go to parsing class and create an instance... send the body to parsing class to converted and get the response...
        RestAnimalParse restAnimalP = RestAnimalParse.parse(response.getBody()); 
        
            for(Object w : restAnimalP.animals){
                System.debug(w);
            }
        } 
    }  
    
    
    //POST METHOD STRUCTURE...
    
    public static void postAnimals(){
        
        Http http = new Http();
        HttpRequest request = new HttpRequest(); //fill out request fields...
        request.setMethod('POST'); // define your method
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8'); // define the header field...
        request.setBody('{"name": "horse"}'); // body will be in JSON format
        
      HttpResponse response = http.send(request);
        
        if(response.getStatusCode()==201){
            
            System.debug(response.getBody());
            
        }else{
            System.debug('There is an issue in request: ' + response.getStatus() + ' - ' + response.getStatusCode() );
        }
    }
    
}