public class GreenGardens {
    public Decimal calculateWateringAmount (Decimal temperature, Decimal humidity) {
        if(temperature>30 && humidity<40) {
            return 1;
        }
        else {
            return 0.5;
		}
    }
}