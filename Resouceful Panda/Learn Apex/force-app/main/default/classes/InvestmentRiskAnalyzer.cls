public class InvestmentRiskAnalyzer {
    public String calculateRiskScore(Decimal returnRate, Decimal volatility) {
        if(returnRate>10 && volatility<0.8) {
            return 'Low';
        }
        else {
            return 'High';
        }
    }
}