/**
 * Apex Real Time Search
 * © Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
@isTest
private class ApexRealTimeSearchDaoTest {

    private static ApexRealTimeSearchDao dao = new ApexRealTimeSearchDao();
    private static User testAdminUser = CommonTester.getTestUser();
 
    /**
     * Get Records
     */
    static testMethod void getRecordsTest1() {    
        System.runAs(testAdminUser) {
            
            Test.startTest();
            
            String searchKey = '';
            List<sObject> results = dao.getRecords(searchKey);
            
            Test.stopTest();
            
            System.assertEquals(results.isEmpty(), false);
        }
    }
}