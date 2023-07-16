public class RoomCallOutPractice {
public static void getRoom(){
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
    request.setEndpoint('https://medunna.com/api/rooms');
    request.setMethod('GET'); 
    request.setHeader('Authorization', 'Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJzdmV0bGFuYWRldiIsImF1dGgiOiJST0xFX0FETUlOIiwiZXhwIjoxNjkxODUxMTkwfQ.T9yPayd5LD8D44jQGLShVOXbRaeZLMA3rQEkMCin0KssQG73Z_5uCLDZ4YpoV4K6eWKvu9kwTeLSGr7f-DPgdg' );

    HttpResponse response=http.send(request);
    System.debug('Status Code:' +response.getStatusCode());
    System.debug('Data: ' + response.getBody());
      if(response.getStatusCode()==200){
            
            //1st Way
           List<Object> roomData = (List<Object>) JSON.deserializeUntyped(response.getBody()); //Casting is done and assigned into a container...
            for(Object w : roomData){
                System.debug('ROOM INFO: ' + w);
            }
        System.debug('-------------------------------');
        
            //2nd Way...
            Map<String, Object> roomData2 = (Map<String, Object>) JSON.deserializeUntyped(response.getBody()); //Casting is done and assigned into a container...
            
            System.debug('Here is the rooms info: '+  roomData2);
            for(Object w : roomData2.values()){
                System.debug('ROOM INFO: ' + w);
            }
      }}}