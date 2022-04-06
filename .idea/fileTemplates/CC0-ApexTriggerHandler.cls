/**
 * Created by ${AuthorFullName} on ${YEAR}-${MONTH}-${DAY}.<br>
 * SObject API Name: ${SObject_API_Name_eg_Account} <br>
 * TriggerHandler Class Name: ${TriggerHandler_Class_Name_eg_AccountNewTriggerHandler} <br>
 * TriggerHandler Test Class Name: ${TriggerHandler_Test_Class_Name_eg_AccountNewTriggerHandlerTest} <br>
 * 2 TriggerHandler Classes
 */
@SuppressWarnings('PMD.CyclomaticComplexity,PMD.StdCyclomaticComplexity')
public class ${TriggerHandler_Class_Name_eg_AccountNewTriggerHandler}
{
    // Exception class
    public class TriggerNewHandlerException extends Exception {}

    @TestVisible
    private Boolean testEmptyMethod = false;
    @TestVisible
    private List<${SObject_API_Name_eg_Account}> newListStore = new List<${SObject_API_Name_eg_Account}>();
    @TestVisible
    private Map<Id, ${SObject_API_Name_eg_Account}> newMapStore = new Map<Id, ${SObject_API_Name_eg_Account}>();
    @TestVisible
    private List<${SObject_API_Name_eg_Account}> oldListStore = new List<${SObject_API_Name_eg_Account}>();
    @TestVisible
    private Map<Id, ${SObject_API_Name_eg_Account}> oldMapStore = new Map<Id, ${SObject_API_Name_eg_Account}>();

    // executedAtLeastOnce
    public static Boolean executedBeforeInsertAtLeastOnce = false;
    public static Boolean executedBeforeUpdateAtLeastOnce = false;
    public static Boolean executedBeforeDeleteAtLeastOnce = false;
    public static Boolean executedAfterInsertAtLeastOnce = false;
    public static Boolean executedAfterUpdateAtLeastOnce = false;
    public static Boolean executedAfterDeleteAtLeastOnce = false;
    public static Boolean executedAfterUndeleteAtLeastOnce = false;

    public void mainEntry(
            System.TriggerOperation triggerOperation,
            Boolean triggerIsExecuting
    )
    {
        switch on triggerOperation
        {
            when BEFORE_INSERT
            {
                this.newListStore = triggerIsExecuting ? (List<${SObject_API_Name_eg_Account}>)Trigger.new : this.newListStore;
                handleBeforeInsert(triggerOperation, triggerIsExecuting, this.newListStore);
            }
            when AFTER_INSERT
            {
                this.newListStore = triggerIsExecuting ? (List<${SObject_API_Name_eg_Account}>)Trigger.new : this.newListStore;
                this.newMapStore = triggerIsExecuting ? (Map<Id, ${SObject_API_Name_eg_Account}>)Trigger.newMap : this.newMapStore;
                handleAfterInsert(triggerOperation, triggerIsExecuting, this.newListStore, this.newMapStore);
            }
            when BEFORE_UPDATE
            {
                this.newListStore = triggerIsExecuting ? (List<${SObject_API_Name_eg_Account}>)Trigger.new : this.newListStore;
                this.newMapStore = triggerIsExecuting ? (Map<Id, ${SObject_API_Name_eg_Account}>)Trigger.newMap : this.newMapStore;
                this.oldListStore = triggerIsExecuting ? (List<${SObject_API_Name_eg_Account}>)Trigger.old : this.oldListStore;
                this.oldMapStore = triggerIsExecuting ? (Map<Id, ${SObject_API_Name_eg_Account}>)Trigger.oldMap : this.oldMapStore;
                onBeforeUpdate(triggerOperation, triggerIsExecuting, this.newListStore, this.newMapStore, this.oldListStore, this.oldMapStore);
            }
            when AFTER_UPDATE
            {
                this.newListStore = triggerIsExecuting ? (List<${SObject_API_Name_eg_Account}>)Trigger.new : this.newListStore;
                this.newMapStore = triggerIsExecuting ? (Map<Id, ${SObject_API_Name_eg_Account}>)Trigger.newMap : this.newMapStore;
                this.oldListStore = triggerIsExecuting ? (List<${SObject_API_Name_eg_Account}>)Trigger.old : this.oldListStore;
                this.oldMapStore = triggerIsExecuting ? (Map<Id, ${SObject_API_Name_eg_Account}>)Trigger.oldMap : this.oldMapStore;
                handleAfterUpdate(
                        triggerOperation,
                        triggerIsExecuting,
                        this.newListStore,
                        this.newMapStore,
                        this.oldListStore,
                        this.oldMapStore
                );
            }
            when BEFORE_DELETE
            {
                this.oldListStore = triggerIsExecuting ? (List<${SObject_API_Name_eg_Account}>)Trigger.old : this.oldListStore;
                this.oldMapStore = triggerIsExecuting ? (Map<Id, ${SObject_API_Name_eg_Account}>)Trigger.oldMap : this.oldMapStore;
                onBeforeDelete(triggerOperation, triggerIsExecuting, this.oldListStore, this.oldMapStore);
            }
            when AFTER_DELETE
            {
                this.oldListStore = triggerIsExecuting ? (List<${SObject_API_Name_eg_Account}>)Trigger.old : this.oldListStore;
                this.oldMapStore = triggerIsExecuting ? (Map<Id, ${SObject_API_Name_eg_Account}>)Trigger.oldMap : this.oldMapStore;
                onAfterDelete(triggerOperation, triggerIsExecuting, this.oldListStore, this.oldMapStore);
            }
            when AFTER_UNDELETE
            {
                this.newListStore = triggerIsExecuting ? (List<${SObject_API_Name_eg_Account}>)Trigger.new : this.newListStore;
                this.newMapStore = triggerIsExecuting ? (Map<Id, ${SObject_API_Name_eg_Account}>)Trigger.newMap : this.newMapStore;
                onAfterUndelete(triggerOperation, triggerIsExecuting, this.newListStore, this.newMapStore);
            }
            when else
            {
                return;
            }
        }
    }

    public void handleBeforeInsert(
            System.TriggerOperation triggerOperation,
            Boolean triggerIsExecuting,
            List<${SObject_API_Name_eg_Account}> newList
    )
    {
        onApplyDefaults(triggerOperation, triggerIsExecuting, newList);
        onBeforeInsert(triggerOperation, triggerIsExecuting, newList);
        executedBeforeInsertAtLeastOnce = true;
    }

    public void onApplyDefaults(
            System.TriggerOperation triggerOperation,
            Boolean triggerIsExecuting,
            List<${SObject_API_Name_eg_Account}> newList
    )
    {
        System.debug(LoggingLevel.WARN, 'onApplyDefaults');
    }

    public void onBeforeInsert(
            System.TriggerOperation triggerOperation,
            Boolean triggerIsExecuting,
            List<${SObject_API_Name_eg_Account}> newList
    )
    {
        System.debug(LoggingLevel.WARN, 'onBeforeInsert');
    }

    @SuppressWarnings('PMD.ExcessiveParameterList')
    public void handleAfterInsert(
            System.TriggerOperation triggerOperation,
            Boolean triggerIsExecuting,
            List<${SObject_API_Name_eg_Account}> newList,
            Map<Id, ${SObject_API_Name_eg_Account}> newMap
    )
    {
        onValidateInsert(triggerOperation, triggerIsExecuting, newList, newMap);
        onAfterInsert(triggerOperation, triggerIsExecuting, newList, newMap);
        executedAfterInsertAtLeastOnce = true;
    }

    @SuppressWarnings('PMD.ExcessiveParameterList')
    public void onValidateInsert(
            System.TriggerOperation triggerOperation,
            Boolean triggerIsExecuting,
            List<${SObject_API_Name_eg_Account}> newList,
            Map<Id, ${SObject_API_Name_eg_Account}> newMap
    )
    {
        System.debug(LoggingLevel.WARN, 'onValidateInsert');
    }

    @SuppressWarnings('PMD.ExcessiveParameterList')
    public void onAfterInsert(
            System.TriggerOperation triggerOperation,
            Boolean triggerIsExecuting,
            List<${SObject_API_Name_eg_Account}> newList,
            Map<Id, ${SObject_API_Name_eg_Account}> newMap
    )
    {
        System.debug(LoggingLevel.WARN, 'onAfterInsert');
    }

    @SuppressWarnings('PMD.ExcessiveParameterList')
    public void onBeforeUpdate(
            System.TriggerOperation triggerOperation,
            Boolean triggerIsExecuting,
            List<${SObject_API_Name_eg_Account}> newList,
            Map<Id, ${SObject_API_Name_eg_Account}> newMap,
            List<${SObject_API_Name_eg_Account}> oldList,
            Map<Id, ${SObject_API_Name_eg_Account}> oldMap
    )
    {
        executedBeforeUpdateAtLeastOnce = true;
    }

    @SuppressWarnings('PMD.ExcessiveParameterList')
    public void handleAfterUpdate(
            System.TriggerOperation triggerOperation,
            Boolean triggerIsExecuting,
            List<${SObject_API_Name_eg_Account}> newList,
            Map<Id, ${SObject_API_Name_eg_Account}> newMap,
            List<${SObject_API_Name_eg_Account}> oldList,
            Map<Id, ${SObject_API_Name_eg_Account}> oldMap
    )
    {
        onValidateUpdate(triggerOperation, triggerIsExecuting, newList, newMap, oldList, oldMap);
        onAfterUpdate(triggerOperation, triggerIsExecuting, newList, newMap, oldList, oldMap);
        executedAfterUpdateAtLeastOnce = true;
    }

    @SuppressWarnings('PMD.ExcessiveParameterList')
    public void onValidateUpdate(
            System.TriggerOperation triggerOperation,
            Boolean triggerIsExecuting,
            List<${SObject_API_Name_eg_Account}> newList,
            Map<Id, ${SObject_API_Name_eg_Account}> newMap,
            List<${SObject_API_Name_eg_Account}> oldList,
            Map<Id, ${SObject_API_Name_eg_Account}> oldMap
    )
    {
        System.debug(LoggingLevel.WARN, 'onValidateUpdate');
    }

    @SuppressWarnings('PMD.ExcessiveParameterList')
    public void onAfterUpdate(
            System.TriggerOperation triggerOperation,
            Boolean triggerIsExecuting,
            List<${SObject_API_Name_eg_Account}> newList,
            Map<Id, ${SObject_API_Name_eg_Account}> newMap,
            List<${SObject_API_Name_eg_Account}> oldList,
            Map<Id, ${SObject_API_Name_eg_Account}> oldMap
    )
    {
        System.debug(LoggingLevel.WARN, 'onAfterUpdate');
    }

    @SuppressWarnings('PMD.ExcessiveParameterList')
    public void onBeforeDelete(
            System.TriggerOperation triggerOperation,
            Boolean triggerIsExecuting,
            List<${SObject_API_Name_eg_Account}> oldList,
            Map<Id, ${SObject_API_Name_eg_Account}> oldMap
    )
    {
        executedBeforeDeleteAtLeastOnce = true;
    }

    @SuppressWarnings('PMD.ExcessiveParameterList')
    public void onAfterDelete(
            System.TriggerOperation triggerOperation,
            Boolean triggerIsExecuting,
            List<${SObject_API_Name_eg_Account}> oldList,
            Map<Id, ${SObject_API_Name_eg_Account}> oldMap
    )
    {
        executedAfterDeleteAtLeastOnce = true;
    }

    public void onAfterUndelete(
            System.TriggerOperation triggerOperation,
            Boolean triggerIsExecuting,
            List<${SObject_API_Name_eg_Account}> newList,
            Map<Id, ${SObject_API_Name_eg_Account}> newMap
    )
    {
        executedAfterUndeleteAtLeastOnce = true;
    }
}