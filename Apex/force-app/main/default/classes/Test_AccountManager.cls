/**
 * This class contains unit tests for validating the behavior of Apex classes
 * and triggers.
 *
 * Unit tests are class methods that verify whether a particular piece
 * of code is working properly. Unit test methods take no arguments,
 * commit no data to the database, and are flagged with the testMethod
 * keyword in the method definition.
 *
 * All test methods in an org are executed whenever Apex code is deployed
 * to a production org to confirm correctness, ensure code
 * coverage, and prevent regressions. All Apex classes are
 * required to have at least 75% code coverage in order to be deployed
 * to a production org. In addition, all triggers must have some code coverage.
 * 
 * The @isTest class annotation indicates this class only contains test
 * methods. Classes defined with the @isTest annotation do not count against
 * the org size limit for all Apex scripts.
 *
 * See the Apex Language Reference for more information about Testing and Code Coverage.
 */
@isTest
private class Test_AccountManager {

    @isTest
    static void myUnitTest() {
        // TO DO: implement unit test
        List<Contact> conids=new List<Contact>();
        conids.add(Id=1);
        conids.add(Id=2);
        conids.add(Id=3);
        conids.add(Id=4);
        Id accid=5;
        Test.startTest();
        AccountContactManager.AccountContactManager1(accid, conids);
        List<Contact> ids=[Select Id, Name, AccountId from Contact where AccountId=:accid];
        Integer size_of=ids.size();
        Test.stopTest();
        System.debug(ids);
        System.debug(size_of);
        System.assertEquals(4, size_of, 'The size is 4');
    }
}