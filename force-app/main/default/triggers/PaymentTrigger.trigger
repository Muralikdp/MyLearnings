trigger PaymentTrigger on Payments__c (before insert) {
    PaymentHelper pHelper = new PaymentHelper();
    

}