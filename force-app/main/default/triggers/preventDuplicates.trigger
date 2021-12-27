trigger preventDuplicates on Customer_Account__c (before insert, before update) {
    //prevent duplicate accounts on Customer Account object
    for (Customer_Account__c a : Trigger.New){
        List <Customer_Account__c> acc = [SELECT Id FROM Customer_Account__c 
                                          WHERE Customer_Account__c.Phone__c = :a.Phone__c];
        if (acc.size() > 0){
            a.Phone__c.addError('This phone number was used for another account.');
        }
    }
}