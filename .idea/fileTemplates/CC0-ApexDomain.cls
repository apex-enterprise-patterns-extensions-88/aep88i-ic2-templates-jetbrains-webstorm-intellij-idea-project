/**
 * Created by ${AuthorFullName} on ${YEAR}-${MONTH}-${DAY}.<br>
 * SObject API Name: ${SObject_API_Name_eg_Account} <br>
 * Domain SObject Class Name: ${Domain_SObject_Class_Name_eg_AccountDomain} <br>
 * Domain SObject Test Class Name: ${Domain_SObject_Test_Class_Name_eg_AccountDomainTest} <br>
 * 2 Domain SObject Classes
 */
public inherited sharing class ${Domain_SObject_Class_Name_eg_AccountDomain}
{
    public static final String SOBJECT_API_NAME = '${SObject_API_Name_eg_Account}';

    List<${SObject_API_Name_eg_Account}> records = new List<${SObject_API_Name_eg_Account}>();

    public ${Domain_SObject_Class_Name_eg_AccountDomain}(List<${SObject_API_Name_eg_Account}> domainList)
    {
        this.records = domainList.clone();
    }

    public List<${SObject_API_Name_eg_Account}> getRecords()
    {
        return this.records;
    }
}