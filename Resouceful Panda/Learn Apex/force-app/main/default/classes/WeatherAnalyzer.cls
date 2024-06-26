public class WeatherAnalyzer {
    public String analyzeTemperature(Decimal Temperature) {
        if(temperature>30) return 'Hot';
        else if(temperature>=15 && temperature<=30) return 'Mild';
        else return 'Cold';
    }
}