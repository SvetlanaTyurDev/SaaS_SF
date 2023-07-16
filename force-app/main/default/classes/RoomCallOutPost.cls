public class RoomCallOutPost {

    
            //create metadata for the body that you want to send to Medunna...
    public class Room{
        
        public String description;
        public Integer price; 
        public Integer roomNumber;
        public String roomType;
        public Boolean status;        
    }
    public static void roomPost(){
     //now fill out the metada 
      Room room = new Room();
        //please fill out all the field...
        room.description = 'newroom';
        room.price= 545; 
        room.roomNumber=30987;
        room.roomType= 'TWIN';
        room.status= true; 
  
        String json = JSON.serialize(room);
      
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setHeader('Content-Type', 'application/json;charset=UTF-8'); // define the header field...

    	request.setEndpoint('https://medunna.com/api/rooms');
        request.setMethod('POST');
        request.setHeader('Authorization', 
                          'Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJtdGtheWE2MSIsImF1dGgiOiJST0xFX0FETUlOIiwiZXhwIjoxNjkxNzcxNzIzfQ.pf7BEWRxcdT-QI0QOINzHV5dLtiVyWkMSIIjLQKMAXGNOpaqUBgHHeeodlEkYB19ixjgLhvzJihyZgxWejfFow');
   		        
       // request.setBody(body); //we will create body separately and use here dynamically
       request.setBody(json);
       // HttpResponse......complete please..
       HttpResponse response=http.send(request);
       System.debug(request.getBody());
       System.debug(response.getBody());
    }
 
}

//Following template is taken from Medunna API Documentation. 
//Those are required and some other fields that are used in POST method
/*
 {

  "description": "string",
  "price": 600,
  "roomNumber": 303,
  "roomType": "TWIN",
  "status": true
}
*/