public class StringArray {
public static List<String> generateStringArray 
    (Integer inputNum)
{
    List<String> strList=new List<String>();
    for (Integer i=1; i<=inputNum; i++){
        String outPut='Class'+i;
        strList.add(outPut);
    }
    System.debug(strList);
    return strList;}}