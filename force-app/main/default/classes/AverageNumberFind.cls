public class AverageNumberFind {
    public static void getPerfectAverage (Integer num1, Integer num2){
        Integer sum=0;
        integer count=0;
        for (Integer i=num1; i<=num2; i++){
            sum+=i;
            count++;
        }
        System.debug(sum/count); 
    }

}