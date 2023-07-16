@isTest
public class TaskUtilTest {
    @isTest
    public static void getTaskPriority() {
        String pri=TaskUtil.getTaskPriority('NY');
        System.assertEquals('Normal', pri);
    }
    @isTest
         public static void getTaskPriorityHigh() {
        String pri=TaskUtil.getTaskPriority('CA');
        System.assertEquals('High', pri);
    }
    @isTest
         public static void getTaskPriorityNull() {
        String pri=TaskUtil.getTaskPriority('');
        System.assertEquals(Null, pri);
           String pri2=TaskUtil.getTaskPriority('ABC');
        System.assertEquals(null, pri2);
    }
    }