public class InvestmentCalculator {
    public Decimal calculateInvestmentValue (Decimal initialAmount, Decimal annualInterestRate, Integer years) {
        Integer i;
        Decimal final_value=initialAmount;
        Decimal y1=years;
        for (i=1;i<=years;i++) {
            final_value=(initialAmount*annualInterestRate*i)/100;
            System.debug('The value at year '+i+ ' is '+final_value);
        }
        return final_value;
    }
}