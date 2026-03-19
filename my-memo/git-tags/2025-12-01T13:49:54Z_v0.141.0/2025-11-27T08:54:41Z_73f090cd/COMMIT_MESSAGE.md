commit 73f090cd0d59a3faa237168750d44a0036d8fd5c
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Thu Nov 27 09:54:41 2025 +0100

    [confighttp, configgrpc] Replace host parameter by map of extensions (#14190)
    
    #### Description
    
    Alternative to #14162, where we make the map of extensions a mandatory
    positional parameter to replace `host` instead of an option.
    
    #### Link to tracking issue
    Fixes #13640
    
    #### Testing
    Existing tests make extensive use of the modified functions
    
    #### Documentation
    Added line in ToServer/ToClient(Conn) documentation describing the
    intended use of the extensions parameter.
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
