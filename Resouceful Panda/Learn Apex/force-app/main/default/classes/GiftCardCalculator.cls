public class GiftCardCalculator {
    public Decimal calculateGiftCard (Decimal purchaseAmount, String customerType) {
        Decimal gift_card_amount;
        if(customerType=='Prime' ) {
            if(purchaseAmount>500) {
            	gift_card_amount=100;
        	}
            else {
                gift_card_amount=50;
            }
    	}
        else if(customerType!='Prime') {
            if(purchaseAmount>300) {
                gift_card_amount=50;
            }
            else {
                gift_card_amount=20;
            }
        }
        return gift_card_amount;
}
}