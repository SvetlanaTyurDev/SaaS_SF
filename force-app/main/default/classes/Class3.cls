public class Class3 {
    public static void dynamicCalculationMethod (decimal a, decimal b, string operation){
        if (operation.equalsIgnoreCase('add')) {
            System.debug(a+b);
            } else if (operation.equalsIgnoreCase('subtract')) {
                   System.debug(a-b);
        } else if (operation.equalsIgnoreCase('multiply')) {
               System.debug(a*b);
    }
        else if (operation.equalsIgnoreCase('divide')) {
               System.debug(a/b);     
        }
    }}