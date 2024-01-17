trigger LoanTrigger on Loan__c (before insert) {
    LoanHelper lHelper = new LoanHelper();
    if(trigger.isBefore){
        if(trigger.isInsert){
         lHelper.updateLoanId(trigger.new);   
        }
    }
}