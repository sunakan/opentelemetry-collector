commit ae67b7c822aa3bf000f6cc9181e5ca16c22814da
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Wed Apr 10 14:45:38 2024 -0700

    [chore] Cleanup changelog (#9937)
    
    - Remove an entry for sync/atomic usage as it's an internal change
    - Fix a typo
    - Move pdata/testdata from Deprecations to Enhancements since
    `internal/testdata` wasn't avalable from outside of the repo
