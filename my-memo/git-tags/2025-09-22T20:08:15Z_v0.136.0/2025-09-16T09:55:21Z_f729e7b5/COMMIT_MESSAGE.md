commit f729e7b55a6b9cf703c74f13d9f48ac8b655ced7
Author: ian <141902143+yumosx@users.noreply.github.com>
Date:   Tue Sep 16 17:55:21 2025 +0800

    [exporter/otlp] fix the validation of unix socket endpoint (#13831)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    Unix socket endpoints do not have a host:port structure, so port
    validation should be skipped to prevent unnecessary errors.
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #13826
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
