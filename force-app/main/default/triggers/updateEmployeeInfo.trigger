trigger updateEmployeeInfo on Absences__c (before insert) {
    // to populate a lookup field / update employee's email 
    
    // get employee account record's id from a new absence record
    Set<id>ids = new Set<id>();
    for(Absences__c a :trigger.new){
        if(a.Employee_Account__c != null){
              ids.add(a.Employee_Account__c);
        }  
    }
    //get employee email from employee acount with id that matches above id
    Map<id, Employee_Account__c> mapEm = new Map<id, Employee_Account__c> 
        ([SELECT id, Email__c FROM Employee_Account__c WHERE Id In :ids]);
    
        //populate the email field
        for (Absences__c a :trigger.new){
            if (a.Employee_Account__c != null){
                if (mapEm.containsKey(a.Employee_Account__c)){
                    Employee_Account__c e = mapEm.get(a.Employee_Account__c);
                    a.Employee_s_Email__c = e.Email__c;
                }
            }
        }
     
    }