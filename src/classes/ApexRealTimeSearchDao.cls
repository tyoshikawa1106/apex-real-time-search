/**
 * Apex Real Time Search
 * © Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
public with sharing class ApexRealTimeSearchDao {

    /**
     * Constructor
     */
    public ApexRealTimeSearchDao() {
    
    }
    
    /**
     * Get Recoreds
     */
    public List<ApexClass> getRecords(String prmSearchKey) {
    
        String searchKey = prmSearchKey + '%';
    
        return [
            SELECT
                Name
            FROM
                ApexClass
            WHERE
                Name LIKE: searchKey
            ORDER BY Name ASC
            LIMIT 1000
        ];
    }
}