commit 053d370605073cee8da805a1f0a2de6b35bb8494
Author: Antoine Toulme <atoulme@splunk.com>
Date:   Fri Aug 9 11:59:11 2024 -0700

    [mdatagen] expose host in generated test code by mdatagen (#10765)
    
    #### Description
    Expose a setting on tests::host to set up your own host initialization
    code
    
    Some receivers require a host that has additional capabilities such as
    exposing exporters.
    For those, we can expose a setting that allows them to place a different
    host in the generated code.
