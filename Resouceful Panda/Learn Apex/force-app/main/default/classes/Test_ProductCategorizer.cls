@isTest
private class Test_ProductCategorizer {
    @isTest static void Test1() {
        ProductCategorizer pc=new ProductCategorizer();
        Decimal Price=50;
        String productName='TestABC';
        String final_value_string = pc.Product_Category(productName, Price);
        System.assertEquals(final_value_string,'The product TestABC is categorized as Budget with a price of $50');
        Price=100;
        final_value_string=pc.Product_Category(productName, Price);
        System.debug(final_value_string);
        System.assertEquals(final_value_string,'The product TestABC is categorized as Standard with a price of $100');
    }
}