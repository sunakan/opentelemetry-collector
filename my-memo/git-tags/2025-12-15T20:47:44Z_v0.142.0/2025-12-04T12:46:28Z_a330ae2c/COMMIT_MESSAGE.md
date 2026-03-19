commit a330ae2ccbb574c0e7537ea3a4ab79f1301e4547
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Thu Dec 4 12:46:28 2025 +0000

    [chore] Skip or bump some benchmarks to reduce noise (#14258)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    Bumps size to 2k on some benchmarks to hopefully make those benchmarks
    more reliable.
    
    Skips a bunch of other benchmarks that are allocation-heavy and
    currently are more noise than signal.
    
    #### Link to tracking issue
    Relates to #14257
