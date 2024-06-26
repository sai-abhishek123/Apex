@isTest
private class Test_InvestmentRiskAnalyzer {
    @isTest static void Test1() {
        InvestmentRiskAnalyzer i=new InvestmentRiskAnalyzer();
        Decimal returnRate=11;
        Decimal volatility=0.7;
        System.assertEquals(i.calculateRiskScore(returnRate, volatility),'Low');
    }
    @isTest static void Test2() {
        InvestmentRiskAnalyzer i_2=new InvestmentRiskAnalyzer();
        Decimal returnRate=9;
        Decimal volatility=1;
        System.assertEquals(i_2.calculateRiskScore(returnRate, volatility),'High');
    }
}