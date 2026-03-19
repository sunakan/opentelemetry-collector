commit f846829309f7a69f6f50459180ed5bd2876033f4
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Mon May 12 13:54:44 2025 +0200

    [chore] Document scalability, performance and resiliency requirements for stable components (#12994)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    <!-- Issue number if applicable -->
    
    This updates the stability requirements to require certain benchmarking,
    testing and documentation to ensure scalability, resiliency and
    performance expectations are documented at a minimum level.
    
    To operationalize this, I will work on:
    - Adding automated context propagation tests for components for which it
    is easy to do so (connectors and processors)
    - Adding a new section to the table with a link to the latest
    benchmarking results.
    
    #### Link to tracking issue
    
    Fixes #11866
    Fixes #11868
    Fixes #11593
