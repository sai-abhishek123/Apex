public class DiscountCalculator {
   /* public Decimal calculateDiscountedPrice(Decimal original_price, Decimal discount_percentage) {
        Decimal final_discounted_price;
        final_discounted_price = original_price*(1-(discount_percentage*0.01));
        if(discount_percentage > 30) {
            final_discounted_price = final_discounted_price*(1-0.05);
        }
        return final_discounted_price;
    }*/
    public Decimal calculateDiscount (Decimal totalAmount) {
        Decimal final_price;
        
        if(totalAmount>1000) {
            final_price=totalAmount*0.90;
        }
        else {
            final_price=totalAmount*0.95;
        }
    	return final_price;
    }
}