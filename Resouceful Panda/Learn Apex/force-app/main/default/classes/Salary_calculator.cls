public class Salary_calculator {
    public Decimal hoursWorked (Integer hours, Decimal hourly) {
        Decimal final_1;
        Decimal hrs=hours;
        if(hours<=40) {
            final_1=hrs*hourly;
        }
        else if (hours>40) {
            Decimal hours1=hrs-40;
           	final_1=40.0*hourly+hours1*hourly*1.5;
        }
        return final_1;
    }
}