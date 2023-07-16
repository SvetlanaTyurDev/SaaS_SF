public class postGoRest {
    
    public static void postUser(){
        
        Http http = new Http();
        HttpRequest request = new HttpRequest(); //fill out request fields...
        request.setMethod('POST'); // define your method
        request.setEndpoint('https://gorest.co.in/public/v2/users');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8'); // define the header field...
        request.setHeader('Authorization', 'Bearer 75d447f0ac25ca17233d6c478b4cb4d9a71d1b96245b71c8770a16985e676571' );
        request.setBody('{"name": "mohican", "email": "svetasea83@gmail.com", "gender": "male", "status": "active"}');
        
        HttpResponse response = http.send(request);
        
        if(response.getStatusCode() == 201){
            System.debug('Result: ' + response.getBody());
        }else{
            System.debug('Error: ' + response.getStatus()+ ' - ' +response.getStatusCode());
        }
    }

}