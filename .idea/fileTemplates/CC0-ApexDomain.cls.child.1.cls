/**
 * Created by ${AuthorFullName} on ${YEAR}-${MONTH}-${DAY}.
 */
@IsTest(IsParallel=true)
public class ${Domain_SObject_Test_Class_Name_eg_AccountDomainTest}
{
    @IsTest
    static void getRecords()
    {
        // Given
        Id testId = fflib88i_IDGenerator.generate(${SObject_API_Name_eg_Account}.SObjectType);
        ${SObject_API_Name_eg_Account} testRecord = new ${SObject_API_Name_eg_Account}(Id = testId);

        // When
        List<${SObject_API_Name_eg_Account}> domainList = new List<${SObject_API_Name_eg_Account}>{testRecord};
        ${Domain_SObject_Class_Name_eg_AccountDomain} domain = new ${Domain_SObject_Class_Name_eg_AccountDomain}(domainList);
        List<${SObject_API_Name_eg_Account}> returnedList = domain.getRecords();

        // Then
        System.assertEquals(1, returnedList.size());
        ${SObject_API_Name_eg_Account} returnedRecord = returnedList[0];
        System.assertEquals(testId, returnedRecord.Id);
    }
}