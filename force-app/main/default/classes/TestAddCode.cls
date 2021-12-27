@isTest
public class TestAddCode {
	@isTest
    public static void addCode(){
        
        //create test data
        List<Product2> productList = new List<Product2>();
        Product2 prod1 = new Product2(Name = 'Strawberry Milk Tea', ProductCode = '003');
        Product2 prod2 = new Product2(Name = 'Vanilla Black Tea', ProductCode = '004');   
        
        productList.add(prod1);
        productList.add(prod2);
        
        insert productList;
    }
}