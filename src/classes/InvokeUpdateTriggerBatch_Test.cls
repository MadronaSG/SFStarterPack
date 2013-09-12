@isTest
private class InvokeUpdateTriggerBatch_Test {

    static testmethod void testBatch() {
		
		List<Lead> leads = new List<Lead>();
		
		for(Integer i=0; i<100; i++) {
			
			Lead l = new Lead();
			l.FirstName = 'Test' + String.valueof(i);
			l.LastName = 'Test' + String.valueof(i);
			l.Email = 'test' + String.valueof(i) + '@test.com';
			l.Company = 'Blah Company';
			leads.add(l);
			
		}
		
		insert leads;
		
		Test.startTest();
		
		String batchId = InvokeUpdateTriggerBatch.invoke('SELECT Id FROM Lead');
		
		Test.stopTest();
		
	}
}