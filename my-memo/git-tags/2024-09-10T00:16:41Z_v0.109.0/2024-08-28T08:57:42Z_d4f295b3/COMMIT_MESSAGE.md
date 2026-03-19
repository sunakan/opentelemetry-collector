commit d4f295b3ce14370d63c8cc3518788876a4451b22
Author: Antoine Toulme <atoulme@splunk.com>
Date:   Wed Aug 28 01:57:42 2024 -0700

    [chore] delete unused method on nopHost (#10717)
    
    #### Description
    Delete GetExporters on nopHost as it is no longer part of the interface
    signature.
    
    This is a no-op and no change in API exposed directly is present since
    nopHost is not exported.
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
