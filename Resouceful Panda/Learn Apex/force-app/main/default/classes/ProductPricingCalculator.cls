public class ProductPricingCalculator {
    Decimal profit_margin;
    public Decimal profitMargin(Decimal profit_margin,Decimal cost) {
        return (cost/(1-profit_margin));
    }
    public Decimal calculateProductPrice(Decimal cost, String category) {
        Decimal final_answer;
        if(category=='outdoor') {
            if(cost>100) {
                profit_margin=0.2;
                final_answer=profitMargin(profit_margin,cost);
            }
            else {
                profit_margin=0.15;
                final_answer=profitMargin(profit_margin,cost);
            }
        }
        else if(category!='outdoor') {
            profit_margin=0.1;
            final_answer=profitMargin(profit_margin,cost);
        }
        return final_answer;
    }
}