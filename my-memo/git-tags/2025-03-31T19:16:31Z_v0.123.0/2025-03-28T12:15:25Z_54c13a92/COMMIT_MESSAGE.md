commit 54c13a92174713437639d68acd80624112126a72
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Fri Mar 28 13:15:25 2025 +0100

    Inject component-identifying scope attributes (#12617)
    
    #### Description
    
    Fork of #12384 to showcase how component attributes can be injected into
    scope attributes instead of log/metric/span attributes. See that PR for
    more context.
    
    To see the diff from the previous PR, filter changes starting from the
    "Prototype using scope attributes" commit.
    
    #### Link to tracking issue
    Resolves #12217
    Also incidentally resolves #12213 and resolves #12117
    
    #### Testing
    I updated the existing tests to check for scope attributes, and did some
    manual testing with a debug exporter to check that the scope attributes
    are added/removed properly.
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
