commit 6031ab1404bbaa779f6c4d249a6e4310365a4e69
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Thu Jan 8 21:23:21 2026 +0100

    [chore][receiver/otlp] Add sequential logs benchmark (#14398)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Adds two benchmarks for receiving OTLP logs over HTTP (proto) and gRPC.
    
    The goal is to have reliable but not necessarily realistic benchmarks.
    As such this benchmark does not test concurrent requests (which is
    important and we should do on a different PR).
    
    If these look okay and prove to be non-flaky enough on main, I will add
    benchmarks for the other stable signals as well.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    
    Updates #14111
    Updates #12979
