public class Trailhead_dental {
    public String calculateCavityRiskScore(Integer sugarIntake,Integer brushingFrequency) {
        if(sugarIntake>50 ||  brushingFrequency<2) {
            return 'High';
        }
        else {
            return 'Low';
        }
    }
}