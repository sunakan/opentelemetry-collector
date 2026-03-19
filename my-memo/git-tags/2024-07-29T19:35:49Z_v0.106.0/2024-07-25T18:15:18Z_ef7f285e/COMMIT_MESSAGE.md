commit ef7f285ec7a3fbebccdbf205b35c0025315cf5b5
Author: Antoine Toulme <atoulme@splunk.com>
Date:   Thu Jul 25 11:15:18 2024 -0700

    [chore] avoid flaky test by using port 0 (#10678)
    
    #### Description
    Use port zero since we just start and stop the server.
    
    #### Link to tracking issue
    Fixes #9772
