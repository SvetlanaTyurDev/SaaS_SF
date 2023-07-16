public class FindSum {
public static Integer calculateSum(List<Integer> numbersList) {
        Integer sum = 0;
        for (Integer num : numbersList) {
            sum += num;
        }
        return sum;
    }

}