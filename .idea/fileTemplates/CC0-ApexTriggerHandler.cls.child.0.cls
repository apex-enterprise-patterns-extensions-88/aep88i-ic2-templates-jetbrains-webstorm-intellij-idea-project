/**
 * Created by ${AuthorFullName} on ${YEAR}-${MONTH}-${DAY}.
 */
@IsTest(IsParallel=true)
public class ${TriggerHandler_Test_Class_Name_eg_AccountNewTriggerHandlerTest}
{
    @IsTest
    static void emptyMethods()
    {
        // Given - data setup
        Id testId = fflib88i_IDGenerator.generate(${SObject_API_Name_eg_Account}.SObjectType);
        ${SObject_API_Name_eg_Account} testNewRecord = new ${SObject_API_Name_eg_Account}(Id = testId);
        ${SObject_API_Name_eg_Account} testOldRecord = new ${SObject_API_Name_eg_Account}(Id = testId);
        List<${SObject_API_Name_eg_Account}> testNewList = new List<${SObject_API_Name_eg_Account}>{testNewRecord};
        Map<Id, ${SObject_API_Name_eg_Account}> testNewMap = new Map<Id, ${SObject_API_Name_eg_Account}>{testId => testNewRecord};
        List<${SObject_API_Name_eg_Account}> testOldList = new List<${SObject_API_Name_eg_Account}>{testOldRecord};
        Map<Id, ${SObject_API_Name_eg_Account}> testOldMap = new Map<Id, ${SObject_API_Name_eg_Account}>{testId => testOldRecord};

        // When Then

        // test System.TriggerOperation == null
        ${TriggerHandler_Class_Name_eg_AccountNewTriggerHandler} testNewInstanceTriggerOperationIsNull = new ${TriggerHandler_Class_Name_eg_AccountNewTriggerHandler}();
        testNewInstanceTriggerOperationIsNull.testEmptyMethod = true;
        testNewInstanceTriggerOperationIsNull.mainEntry(null, false);
        System.assert(testNewInstanceTriggerOperationIsNull.testEmptyMethod);

        // test handleBeforeInsert()
        // test onApplyDefaults()
        // test onBeforeInsert()
        ${TriggerHandler_Class_Name_eg_AccountNewTriggerHandler} testNewInstanceBeforeInsert = new ${TriggerHandler_Class_Name_eg_AccountNewTriggerHandler}();
        testNewInstanceBeforeInsert.newListStore = testNewList;
        testNewInstanceBeforeInsert.mainEntry(System.TriggerOperation.BEFORE_INSERT, false);
        System.assert(${TriggerHandler_Class_Name_eg_AccountNewTriggerHandler}.executedBeforeInsertAtLeastOnce);

        // test handleAfterInsert()
        // test onValidateInsert()
        // test onAfterInsert()
        ${TriggerHandler_Class_Name_eg_AccountNewTriggerHandler} testNewInstanceAfterInsert = new ${TriggerHandler_Class_Name_eg_AccountNewTriggerHandler}();
        testNewInstanceAfterInsert.newListStore = testNewList;
        testNewInstanceAfterInsert.newMapStore = testNewMap;
        testNewInstanceAfterInsert.mainEntry(System.TriggerOperation.AFTER_INSERT, false);
        System.assert(${TriggerHandler_Class_Name_eg_AccountNewTriggerHandler}.executedAfterInsertAtLeastOnce);

        // test onBeforeUpdate()
        ${TriggerHandler_Class_Name_eg_AccountNewTriggerHandler} testNewInstanceBeforeUpdate = new ${TriggerHandler_Class_Name_eg_AccountNewTriggerHandler}();
        testNewInstanceBeforeUpdate.newListStore = testNewList;
        testNewInstanceBeforeUpdate.newMapStore = testNewMap;
        testNewInstanceBeforeUpdate.oldListStore = testOldList;
        testNewInstanceBeforeUpdate.oldMapStore = testOldMap;
        testNewInstanceBeforeUpdate.mainEntry(System.TriggerOperation.BEFORE_UPDATE, false);
        System.assert(${TriggerHandler_Class_Name_eg_AccountNewTriggerHandler}.executedBeforeUpdateAtLeastOnce);

        // test handleAfterUpdate()
        // test onValidateUpdate()
        // test onAfterUpdate()
        ${TriggerHandler_Class_Name_eg_AccountNewTriggerHandler} testNewInstanceAfterUpdate = new ${TriggerHandler_Class_Name_eg_AccountNewTriggerHandler}();
        testNewInstanceAfterUpdate.newListStore = testNewList;
        testNewInstanceAfterUpdate.newMapStore = testNewMap;
        testNewInstanceAfterUpdate.oldListStore = testOldList;
        testNewInstanceAfterUpdate.oldMapStore = testOldMap;
        testNewInstanceAfterUpdate.mainEntry(System.TriggerOperation.AFTER_UPDATE, false);
        System.assert(${TriggerHandler_Class_Name_eg_AccountNewTriggerHandler}.executedAfterUpdateAtLeastOnce);

        // test onBeforeDelete()
        ${TriggerHandler_Class_Name_eg_AccountNewTriggerHandler} testNewInstanceBeforeDelete = new ${TriggerHandler_Class_Name_eg_AccountNewTriggerHandler}();
        testNewInstanceBeforeDelete.oldListStore = testOldList;
        testNewInstanceBeforeDelete.oldMapStore = testOldMap;
        testNewInstanceBeforeDelete.mainEntry(System.TriggerOperation.BEFORE_DELETE, false);
        System.assert(${TriggerHandler_Class_Name_eg_AccountNewTriggerHandler}.executedBeforeDeleteAtLeastOnce);

        // test onAfterDelete()
        ${TriggerHandler_Class_Name_eg_AccountNewTriggerHandler} testNewInstanceAfterDelete = new ${TriggerHandler_Class_Name_eg_AccountNewTriggerHandler}();
        testNewInstanceAfterDelete.oldListStore = testOldList;
        testNewInstanceAfterDelete.oldMapStore = testOldMap;
        testNewInstanceAfterDelete.mainEntry(System.TriggerOperation.AFTER_DELETE, false);
        System.assert(${TriggerHandler_Class_Name_eg_AccountNewTriggerHandler}.executedAfterDeleteAtLeastOnce);

        // test onAfterUndelete()
        ${TriggerHandler_Class_Name_eg_AccountNewTriggerHandler} testNewInstanceAfterUndelete = new ${TriggerHandler_Class_Name_eg_AccountNewTriggerHandler}();
        testNewInstanceAfterUndelete.newListStore = testNewList;
        testNewInstanceAfterUndelete.newMapStore = testNewMap;
        testNewInstanceAfterUndelete.mainEntry(System.TriggerOperation.AFTER_UNDELETE, false);
        System.assert(${TriggerHandler_Class_Name_eg_AccountNewTriggerHandler}.executedAfterUndeleteAtLeastOnce);
    }
}