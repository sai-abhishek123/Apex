@isTest
private class Test_WeatherAnalyzer {
    @isTest static void Test1() {
        WeatherAnalyzer w1=new WeatherAnalyzer();
        Decimal temp=31;
        String answer=w1.analyzeTemperature(temp);
        System.assertEquals(answer,'Hot','It is supposed to be hot');
    }
    @isTest static void Test2() {
        WeatherAnalyzer w1=new WeatherAnalyzer();
        Decimal temp=16;
        String answer=w1.analyzeTemperature(temp);
        System.assertEquals(answer,'Mild','It is supposed to be mild');
    }
    @isTest static void Test3() {
        WeatherAnalyzer w1=new WeatherAnalyzer();
        Decimal temp=6;
        String answer=w1.analyzeTemperature(temp);
        System.assertEquals(answer,'Cold','It is supposed to be cold');
    }
}