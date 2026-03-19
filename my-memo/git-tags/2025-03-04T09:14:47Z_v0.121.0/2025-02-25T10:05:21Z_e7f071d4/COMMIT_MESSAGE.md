commit e7f071d43cc4193feb36b65f1756c54f2f90b74a
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Tue Feb 25 11:05:21 2025 +0100

    [confmap] Add error hint when invalid YAML was passed (#12180)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    Add error hint field to surface YAML parsing errors. This only surfaces
    the error for top-level URIs but it's a step in the right direction.
    
    Error when passing a file with contents `[invalid:,` as the config:
    
    Before:
    ```
    retrieved value (type=string) cannot be used as a Conf
    ```
    
    After:
    ```
    retrieved value (type=string) cannot be used as a Conf: assuming string type since contents are not valid YAML: yaml: line 1: did not find expected node content
    ```
    
    #### Link to tracking issue
    Updates #12000
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
