public class LoanHelper {

    public void updateLoanId(List<Loan__c> loans){
        Set<Id> lenderIds = new Set<Id>();
        for(Loan__c l : loans){
            lenderIds.add(l.Lender__c);
        }
        //Loan Helper
        Map<Id,Lender__c> lenders = new Map<Id,Lender__c>([SELECT Id,Name,(SELECT Id from Loans__r) from Lender__c where Id in:lenderIds]);
        for(Loan__c l : loans){
           l.Name = 'L'+lenders.get(l.Lender__c).Name.substring(0,1).toUppercase()+'-'+lenders.get(l.Lender__c).Loans__r.size();
        }
    }
}