/**
 * Apex Real Time Search
 * © Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
public with sharing class ApexRealTimeSearchController {

    private static ApexRealTimeSearchDao dao = new ApexRealTimeSearchDao();
    public String searchBar {get; set;}

    /**
     * Constructor
     */
    public ApexRealTimeSearchController() {
        this.searchBar = '';
    }
    
    /**
     * Get Records
     */
    @RemoteAction
    public static List<sObject> getRecords(String searchKey) {
        // Get Records
        List<sObject> records = dao.getRecords(searchKey);
        
        return records;
    }
}