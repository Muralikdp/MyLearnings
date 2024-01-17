public class PaymentHelper {

     public void updatePaymentId(List<Payments__c> payments){
          Set<Id> paymentIds = new Set<Id>();
         for(Payments__c p: payments){
             paymentIds.add(p.Loan__c);
         }
         Map<Id,Loan__c> loans = new Map<Id,Loan__c>([SELECT Id,(SELECT Id from Payment__r) from Loan__c where id In : paymentIds]);
         for(Payments__c p: payments){
             p.Name = P+','+loans.get(p.Loan__c).payment__r+1;
         }
     }
}