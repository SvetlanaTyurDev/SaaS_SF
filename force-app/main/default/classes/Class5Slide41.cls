public class Class5Slide41 {
    
    public static void largestOutOfTwoNumbers(Decimal a, decimal b){
        if(a>b){
            system.debug(a);
        }else{
            System.debug(b);
        }
    }
    
    public static void smallestOutOfThreeNumbers (Decimal a, Decimal b, Decimal c){
        if(a<b && a<c){
            System.debug(a);
        } else if(b<a && b<c){
            System.debug(b);
     
        }else{
            System.debug(c);
        }

}
    public static void sumofPositiveIntegers(Integer n){
        Integer sum=0;
        if(n>0){
          for(Integer i=0; i<=n; i++){
          sum+=i;  
        }
            System.debug(sum);  
        } else{
            System.debug('We are not calculating the sum for negative numbers" and return null value');
        }
        
        
    }
}