public class SOQLDT5 {
    public static void aggResult(){
        AggregateResult[] result=[SELECT Industry, Avg(NumberOfEmployees) FROM Account
         Group BY Industry];
        System.debug(result);
        for (AggregateResult w:result){
            system.debug(w.get('Industry')+ '-' + w.get('avg'));
        }
    }}