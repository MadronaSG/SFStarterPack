/*
	This is provided only as an Example of how to use the triggerhandler interface
	Talk to Kevin Poorman (kevinp@madronasg.com) with questions.
	Forked from https://github.com/MadronaSG/sfdc-trigger-framework
 */	

trigger OpportunityTrigger on Opportunity (before insert, before update, before delete, 
  after insert, after update, after delete, after undelete) {
  
  // to activate this trigger, uncomment this next line:
  // new OpportunityTriggerHandler().run();

}