commit df8fac70ee8e81d8b98006c0ea9b8e9f8ba293e8
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Fri Aug 29 08:17:44 2025 +0000

    [exporter/exporterhelper] Split into a separate module from exporter (#13729)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Split exporterhelper into a separate module. This will allow us to
    evolve and stabilize `exporter` independently from `exporterhelper`
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Updates #12985
