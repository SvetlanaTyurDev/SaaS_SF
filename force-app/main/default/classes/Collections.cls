public class Collections {
    public static String listAssignment (Integer monthNum){
        List<String> listMonth=new List<String>{'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 
            'October', 'November', 'December'};
                string outputMonth;
        if (monthNum >0 && monthNum<=listMonth.size()){
            outputMonth= listMonth.get(monthNum-1);
            System.debug(outputMonth);
            return outputMonth;
            
        }else {
            System.debug('Not a valid month number!');
             return 'Not a valid month number!';
        }
    }
}