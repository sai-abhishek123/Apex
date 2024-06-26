public class OilWellEfficiencyCalculator {
// Write your code here
    public String calculateWellEfficiency (Integer dailyProduction, Integer operatingHours) {
        Integer efficiency=dailyProduction/operatingHours;
        String return_variable;
        if(efficiency>100) {
            return_variable= 'Highly Efficient';
        }
        else if (efficiency>50 && efficiency<100) {
            return_variable= 'Moderately Efficient';
        }
        else {
            return_variable ='Low Efficiency';
        }
        return return_variable;
    }
}