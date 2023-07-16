public class Class4 {
    
    public static String listAssignment(Integer num){
        List<String> lstMonth = new List<String>{'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 
            'September', 'October', 'November','December'};
        String output_month='';
        if(num>0 && num<13){
           output_month=lstMonth.get(num-1); 
            System.debug(output_month);
          return output_month;
        } else {
            System.debug('Not a valid Month!');
             return output_month;
        }
        
        }
 
        
    }