public class ConsultantBonusCalculator {
    public Decimal calculateBonusrate (Integer experience, Decimal performanceScore) {
        Decimal exp=experience;
        if(exp>5 && performanceScore>80) {
            return 0.10;
        }
        else {
            return 0.05;
        }
    }
}