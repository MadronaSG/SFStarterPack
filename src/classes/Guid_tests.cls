@isTest
private class Guid_tests {
	
	@isTest static void test_method_one() {
		String g = Guid.generate();
		system.assertEquals(36, g.length());
	}
	
	@isTest static void test_method_two() {
		List<String> guids = new List<String>();
		for(Integer i = 0; i < 50; i++) {
			guids.add(Guid.generate());
		}

		Set<String> converted = new Set<String>();
		converted.addAll(guids);
		system.assertEquals(50, converted.size());
	}
	
}