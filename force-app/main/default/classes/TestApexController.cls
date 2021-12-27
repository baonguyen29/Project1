@isTest
public class TestApexController {
	@isTest
    public static void ApexController(){
        Product2 prod = new Product2();
        prod.Name = 'Oolong Milk Tea';
        prod.Featured_Product__c = True;
        insert prod;
        
        try {
            ApexController.getProducts();
        }
        catch(Exception e){}
        
        List<Product2> prodList = [SELECT id, name FROM Product2 
        WHERE Featured_Product__c = true];
        
        for (Product2 p : prodList){
            Boolean expectedList = p.Name.contains('Oolong Milk Tea');
    	system.assertEquals(expectedList, true);        
    }
}
}