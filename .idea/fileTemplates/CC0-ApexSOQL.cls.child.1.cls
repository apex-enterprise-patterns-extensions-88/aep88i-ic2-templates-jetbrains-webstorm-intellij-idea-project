/**
 * Created by ${AuthorFullName} on ${YEAR}-${MONTH}-${DAY}.
 */
@IsTest(IsParallel=true)
public class ${Domain_SObject_Test_Class_Name_eg_AccountSOQLTest}
{
    @IsTest
    static void codeCoverage()
    {
        // Given
        Id testId = fflib88i_IDGenerator.generate(${SObject_API_Name_eg_Account}.SObjectType);

        // When
        Set<Id> idSet = new Set<Id>{testId};
        List<${SObject_API_Name_eg_Account}> returnedList = new ${Domain_SObject_Class_Name_eg_AccountSOQL}().selectByIdSet(idSet);

        // Then
        System.assert(returnedList.isEmpty());
    }
}