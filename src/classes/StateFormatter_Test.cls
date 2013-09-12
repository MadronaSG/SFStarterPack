@isTest
private class StateFormatter_Test {

		static testmethod void testAllStates() {
		
		System.assertEquals(StateFormatter.getState('alabama').statecode, 'AL');
		System.assertEquals(StateFormatter.getState('Alaska').statecode, 'AK');
		System.assertEquals(StateFormatter.getState('American Samoa').statecode, 'AS');
		System.assertEquals(StateFormatter.getState('az').statecode, 'AZ');
		System.assertEquals(StateFormatter.getState('arkans').statecode, 'AR');
		System.assertEquals(StateFormatter.getState('Calif').statecode, 'CA');
		System.assertEquals(StateFormatter.getState('co').statecode, 'CO');
		System.assertEquals(StateFormatter.getState('Conn').statecode, 'CT');
		System.assertEquals(StateFormatter.getState('Delaware').statecode, 'DE');
		System.assertEquals(StateFormatter.getState('Dist. of Colombia').statecode, 'DC');
		System.assertEquals(StateFormatter.getState('Fed. States of Micro').statecode, 'FM');
		System.assertEquals(StateFormatter.getState('florida').statecode, 'FL');
		System.assertEquals(StateFormatter.getState('georgia').statecode, 'GA');
		System.assertEquals(StateFormatter.getState('guam').statecode, 'GU');
		System.assertEquals(StateFormatter.getState('hawaiiiiiii').statecode, 'HI');
		System.assertEquals(StateFormatter.getState('idaho').statecode, 'ID');
		System.assertEquals(StateFormatter.getState('illisnosis').statecode, 'IL');
		System.assertEquals(StateFormatter.getState('INDIANA').statecode, 'IN');
		System.assertEquals(StateFormatter.getState('iowa').statecode, 'IA');
		System.assertEquals(StateFormatter.getState('kans').statecode, 'KS');
		System.assertEquals(StateFormatter.getState('kentucky').statecode, 'KY');
		System.assertEquals(StateFormatter.getState('lou isan aa').statecode, 'LA');
		System.assertEquals(StateFormatter.getState('me').statecode, 'ME');
		System.assertEquals(StateFormatter.getState('marshall').statecode, 'MH');
		System.assertEquals(StateFormatter.getState('mary').statecode, 'MD');
		System.assertEquals(StateFormatter.getState('MASSACHU').statecode, 'MA');
		System.assertEquals(StateFormatter.getState('Mich').statecode, 'MI');
		System.assertEquals(StateFormatter.getState(' mn').statecode, 'MN');
		System.assertEquals(StateFormatter.getState('mississississippi').statecode, 'MS');
		System.assertEquals(StateFormatter.getState('missouri').statecode, 'MO');
		System.assertEquals(StateFormatter.getState('montana').statecode, 'MT');
		System.assertEquals(StateFormatter.getState('nebrask').statecode, 'NE');
		System.assertEquals(StateFormatter.getState('NV').statecode, 'NV');
		System.assertEquals(StateFormatter.getState('new hampshire  ').statecode, 'NH');
		System.assertEquals(StateFormatter.getState('new jers.').statecode, 'NJ');
		System.assertEquals(StateFormatter.getState('new mex').statecode, 'NM');
		System.assertEquals(StateFormatter.getState('ny').statecode, 'NY');
		System.assertEquals(StateFormatter.getState('n. carolina').statecode, 'NC');
		System.assertEquals(StateFormatter.getState('n. dakota').statecode, 'ND');
		System.assertEquals(StateFormatter.getState('n. mariana').statecode, 'MP');
		System.assertEquals(StateFormatter.getState('oh').statecode, 'OH');
		System.assertEquals(StateFormatter.getState('oklah oma').statecode, 'OK');
		System.assertEquals(StateFormatter.getState('or').statecode, 'OR');
		System.assertEquals(StateFormatter.getState('pala').statecode, 'PW');
		System.assertEquals(StateFormatter.getState('penn').statecode, 'PA');
		System.assertEquals(StateFormatter.getState('pue').statecode, 'PR');
		System.assertEquals(StateFormatter.getState('ri').statecode, 'RI');
		System.assertEquals(StateFormatter.getState('s. carolinaa').statecode, 'SC');
		System.assertEquals(StateFormatter.getState('s. dakota').statecode, 'SD');
		System.assertEquals(StateFormatter.getState('Tennessee').statecode, 'TN');
		System.assertEquals(StateFormatter.getState('TX').statecode, 'TX');
		System.assertEquals(StateFormatter.getState('ut   ').statecode, 'UT');
		System.assertEquals(StateFormatter.getState('vt').statecode, 'VT');
		System.assertEquals(StateFormatter.getState('virgin isl.').statecode, 'VI');
		System.assertEquals(StateFormatter.getState('virg inia').statecode, 'VA');
		System.assertEquals(StateFormatter.getState('washington').statecode, 'WA');
		System.assertEquals(StateFormatter.getState('w virginia').statecode, 'WV');
		System.assertEquals(StateFormatter.getState('wisc').statecode, 'WI');
		System.assertEquals(StateFormatter.getState('wyoming').statecode, 'WY');
		
	}
	
	static testmethod void testNoStateFound() {
		
		System.assertEquals(StateFormatter.getState('Somewhere'), null);
		
	}
}