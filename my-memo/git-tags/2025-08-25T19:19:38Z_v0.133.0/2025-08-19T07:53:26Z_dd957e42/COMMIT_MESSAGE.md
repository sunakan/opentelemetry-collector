commit dd957e42b2cbdfa69b9659b306960050531eca32
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Tue Aug 19 07:53:26 2025 +0000

    [chore][docs/rfc] Amend universal telemetry RFC with proposed implementation for logs (#13609)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    Amends universal telemetry RFC with proposed implementation for logs
    (see #13474 for the implementation).
    
    Notably, we don't log every outcome but instead only log errors. We can
    start logging individual outcomes in the future but I feel like this
    would not be useful in most cases
    
    #### Link to tracking issue
    Updates #13357
