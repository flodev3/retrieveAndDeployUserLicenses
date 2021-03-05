public with sharing class piani {
    @AuraEnabled(cacheable=true)
    public static String queryStaticResource() {
        return [ // Return whatever the component needs
            SELECT id, body
            FROM StaticResource
            WHERE Name = 'istruzioni'
        ];
    }
}