public class updateEmail {
	/*public static void getPicklistValues(){
        //List<Absences__c> absList = new List<Absences__c>();
        Schema.DescribeFieldResult objFieldResult = Absences__c.Employee_Account__c.getDescribe();
    	List<Schema.PicklistEntry> picklistValues = objFieldResult.getPickListValues();
    	 for (Schema.PicklistEntry value : picklistValues){
             
            for (Absences__c abs : (List<Absences__c>) Trigger.New){
                Employee_Account__c e = [SELECT Name, Email__c FROM Employee_Account__c
                                        WHERE Name = :value.getLabel()];
                abs.Employee_s_Email__c = e.Email__c;
               // absList.add(abs);      
                update abs;      
    }      
    }
      // insert absList;  
    }*/
   
}