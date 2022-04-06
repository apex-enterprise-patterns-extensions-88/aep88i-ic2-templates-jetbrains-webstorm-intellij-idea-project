/**
 * Created by ${AuthorFullName} on ${YEAR}-${MONTH}-${DAY}.<br>
 * SObject API Name: ${SObject_API_Name_eg_Account} <br>
 * Trigger Name: ${Trigger_Name_eg_AccountNewTrigger} <br>
 * TriggerHandler Class Name: ${TriggerHandler_Class_Name_eg_AccountNewTriggerHandler} <br>
 * 1 Trigger
 */
trigger ${Trigger_Name_eg_AccountNewTrigger} on ${SObject_API_Name_eg_Account} (before insert, before update, before delete, after insert, after update, after delete, after undelete)
{
    new ${TriggerHandler_Class_Name_eg_AccountNewTriggerHandler}().mainEntry(Trigger.operationType, Trigger.isExecuting);
}