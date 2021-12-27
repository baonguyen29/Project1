@isTest
public class TestPreventDuplicates {
	@isTest
    private static void preventDuplicates(){
        
        //create test data
        List <Customer_Account__c> accList = new List<Customer_Account__c>();
        
        Customer_Account__c acc1 = new Customer_Account__c(Name='Test1', Phone__c = '1231231234',
                                                           Birthdate__c = date.parse('01/01/2000'));
        Customer_Account__c acc2 = new Customer_Account__c(Name='Test2', Phone__c = '1231231235',
                                                           Birthdate__c = date.parse('01/01/2000'));
        accList.add(acc1);
        accList.add(acc2);
        insert accList;
        
        //make sure duplicate prevention works when inserting
        Customer_Account__c dup1 = new Customer_Account__c(Name='Test1', Phone__c = '1231231234',
                                                           Birthdate__c = date.parse('01/01/2000'));
        try { 
            insert dup1;
        } catch(Exception e){
            Boolean expectedException =  e.getMessage().contains('This phone number was used for another account.') ? true : false;
			System.AssertEquals(expectedException, true);
        }
    } 
}