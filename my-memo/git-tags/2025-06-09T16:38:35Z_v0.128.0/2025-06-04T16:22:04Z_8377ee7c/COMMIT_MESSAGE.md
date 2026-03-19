commit 8377ee7c469acfdff726eab4cdf5e32174e388ff
Author: Igor Pidik <igorPidik@gmail.com>
Date:   Wed Jun 4 18:22:04 2025 +0200

    fix(pdata/plog): unmarshal event_name from json (#13123)
    
    #### Description
    This PR adds missing logic to process `event_name` field when
    unmarshaling LogRecords from JSON.
    
    #### Testing
    Added `eventName` to json (un)marshal tests.
    
    Fixes #13127
