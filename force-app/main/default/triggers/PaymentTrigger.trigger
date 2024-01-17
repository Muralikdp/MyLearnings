trigger PaymentTrigger on Payments__c (before insert) {
    PaymentHelper pHelper = new PaymentHelper();
    if(trigger.isBefore){
        if(trigger.isInsert){
            pHelper.updatePaymentId(trigger.new);
        }
    }

}