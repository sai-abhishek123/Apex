public class CustomerCategoryAssigner {
    public String assignCustomerCategory(String customer_name, Decimal order_amount) {
        String final_string;
        if(order_amount==100) {
            final_string = customer_name+' is assigned to the Gold category with an order amount of $'+order_amount+'.';
        }
        else {
            final_string = customer_name+' is assigned to the Silver category with an order amount of $'+order_amount+'.';
        }
        return final_string;
    }
}