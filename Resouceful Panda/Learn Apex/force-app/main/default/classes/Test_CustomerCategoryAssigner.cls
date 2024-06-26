@isTest
private class Test_CustomerCategoryAssigner {
    @isTest static void Test1() {
        CustomerCategoryAssigner c=new CustomerCategoryAssigner();
        String customer_name='TestABC';
        Decimal order_amount=100;
        System.debug(c.assignCustomerCategory(customer_name, order_amount));
        System.assertEquals(c.assignCustomerCategory(customer_name, order_amount),'TestABC is assigned to the Gold category with an order amount of $100.');
    }
}