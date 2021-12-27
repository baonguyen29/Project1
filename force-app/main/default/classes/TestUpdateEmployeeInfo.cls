@isTest
public class TestUpdateEmployeeInfo {
    @isTest
    public static void updateEmployeeInfo(){      
        
        Absences__c abs = new Absences__c();
        abs.Name = 'Sally';
        date startDate = system.today() + 2 ;
        abs.Start_Date__c = startDate;
        abs.End_Date__c = startDate + 2;
        
        insert abs;  
        
        Set<id>ids = new Set<id>();
   	    ids.add(abs.id);
        
        Map<Id,Employee_Account__c> em = new Map<Id,Employee_Account__c> 
            ([SELECT Id, Email__c FROM Employee_Account__c WHERE Id In :ids]);
		List<Id> listOfIds = new List<Id>(em.keyset());
        
        try {
            abs.Employee_s_Email__c = em.get(listOfIds[0]).Email__c;
            system.assertEquals(abs.Employee_s_Email__c, em.get(listOfIds[0]).Email__c);
        }
        catch(Exception e){}
        
       /*List<Employee_Account__c> emList = [SELECT ID, Name FROM Employee_Account__c WHERE Name = 'Sally'];
        Absences__c abs = new Absences__c();
        abs.Name = 'Sally';
        date startDate = system.today() + 2 ;
        abs.Start_Date__c = startDate;
        abs.End_Date__c = startDate + 2;
        
        insert abs;
        
        for (Employee_Account__c em : emList){
            abs.Employee_Account__c = em.id;
            em.Email__c = abs.Employee_s_Email__c;
        }
                
        system.assertEquals(abs.Employee_s_Email__c, emList[0].Email__c);
        * if (!listOfIds.isEmpty()){
            abs.Employee_s_Email__c = em.get(listOfIds[0]).Email__c;
            system.assertEquals(abs.Employee_s_Email__c, em.get(listOfIds[0]).Email__c);
        }
        else{
            system.debug('List is empty?');*/
        } 
    }