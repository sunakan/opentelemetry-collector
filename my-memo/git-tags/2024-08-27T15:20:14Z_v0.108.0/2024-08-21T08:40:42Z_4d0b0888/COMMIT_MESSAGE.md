commit 4d0b0888b3fda9683c86bc1dd68e743d40f6802f
Author: Antoine Toulme <atoulme@splunk.com>
Date:   Wed Aug 21 01:40:42 2024 -0700

    [chore] set default transport defaults on NewDefaultClientConfig (#10688)
    
    #### Description
    Set the defaults on `NewDefaultClientConfig`. This change is a no-op
    since those defaults are set if the value is not set.
    
    Add documentation to all fields as well.
    
    #### Link to tracking issue
    #9478
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
