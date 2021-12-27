trigger addCode on Product2 (before insert) {
    
    // add M- before product code for product contains 'Milk'
    // add code- for all other products
    
    for (Product2 prod : Trigger.New){
        if (prod.ProductCode != null && prod.ProductCode != ''){
            if(prod.Name.contains('Milk')){
            prod.ProductCode = 'M- '+ prod.ProductCode;
        }
            else {
               prod.ProductCode = 'code- '+ prod.ProductCode; 
            }
    }
}
}