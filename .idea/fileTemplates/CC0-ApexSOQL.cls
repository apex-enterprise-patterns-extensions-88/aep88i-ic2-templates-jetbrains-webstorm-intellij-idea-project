/**
 * Created by ${AuthorFullName} on ${YEAR}-${MONTH}-${DAY}.<br>
 * SObject API Name: ${SObject_API_Name_eg_Account} <br>
 * Domain SObject Class Name: ${Domain_SObject_Class_Name_eg_AccountDomain} <br>
 * Apex SOQL Class Name: ${Domain_SObject_Class_Name_eg_AccountSOQL} <br>
 * Apex SOQL Test Class Name: ${Domain_SObject_Test_Class_Name_eg_AccountSOQLTest} <br>
 * 2 Apex SOQL Classes
 */
public inherited sharing class ${Domain_SObject_Class_Name_eg_AccountSOQL}
{
    String getSOQL(String fieldsInMethodOnly, String whereStringAndMore)
    {
        return fflib88i_SOQL.create(
                getFieldsShared(),
                fieldsInMethodOnly,
                ${Domain_SObject_Class_Name_eg_AccountDomain}.SOBJECT_API_NAME,
                whereStringAndMore
        );
    }

    String getFieldsShared()
    {
        return 'Id';
    }

    public List<${SObject_API_Name_eg_Account}> selectByIdSet(Set<Id> idSet)
    {
        String fieldsInMethodOnly = '';
        String whereStringAndMore = 'WHERE Id IN :idSet';
        return (List<${SObject_API_Name_eg_Account}>)Database.query(
                getSOQL(fieldsInMethodOnly, whereStringAndMore)
        );
    }
}