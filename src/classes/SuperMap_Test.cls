@isTest
private class SuperMap_Test {

    static testMethod void testTenThousand() {
        SuperMap mySuperMap = new SuperMap();
        for(Integer i=1; i<=10000; i++) {
        	mySuperMap.put(String.valueOf(i), 'value' + String.valueOf(i));
        }
        
        System.assert(mySuperMap.containsKey('10000'));
        
        String val = (String) mySuperMap.get('10000');
        
        System.assertEquals('value10000', val);
        
        List<Set<String>> keys = mySuperMap.keySet();
        
        List<List<Object>> values = mySuperMap.values();
        
    }
}