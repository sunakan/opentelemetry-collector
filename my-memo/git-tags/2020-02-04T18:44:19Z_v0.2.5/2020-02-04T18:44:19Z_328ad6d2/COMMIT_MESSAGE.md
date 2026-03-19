commit 328ad6d22b37f02e8079d0e896cfc3e188263b61
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Feb 4 13:44:19 2020 -0500

    Add regexp support to service name include/exclude filters (#522)
    
    - Added regexp support to service name field in include/exclude
      filters of attributes processor. This makes it consistent with
      span name fields which already use regexp patterns.
    
    - Added match_type to make service name and span name matching explicit.
    
    Testing: added unit and E2E tests.
    Documentation: README modified as appropriate.
