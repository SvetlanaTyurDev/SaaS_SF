public class Class1 {
    public static List<String> generateStringArray(Integer num){
        List<String> str=new List<String>();
        for (Integer i=0; i<=num; i++){
            str.add('Test'+i);
        }
        System.debug(str);
        return str;
    }

}