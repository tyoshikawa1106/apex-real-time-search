/**
 * Apex Real Time Search
 * © Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
@isTest
private class ApexRealTimeSearchControllerTest {

    private static User testAdminUser = CommonTester.getTestUser();
    
    /**
     * Constructor
     */
    static testMethod void ApexRealTimeSearchControllerTest() {
        System.runAs(testAdminUser) {
            
            Test.startTest();
            
            ApexRealTimeSearchController cls = new ApexRealTimeSearchController();
            
            Test.stopTest();
            
            System.assertEquals(String.isEmpty(cls.searchBar), true);
        }
    }
 
    /**
     * Get Records
     */
    static testMethod void getRecordsTest1() {    
        System.runAs(testAdminUser) {
            
            Test.startTest();
            
            String searchKey = '';
            List<sObject> results = ApexRealTimeSearchController.getRecords(searchKey);
            
            Test.stopTest();
            
            System.assertEquals(results.isEmpty(), false);
        }
    }
}