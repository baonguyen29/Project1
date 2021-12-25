public with sharing class ApexController {

    @AuraEnabled (cacheable = true)

    public static List<Product2> getProducts() {
        return [SELECT id, name, Image_URL__c, Description FROM Product2 
        WHERE Featured_Product__c = true];
    }
}