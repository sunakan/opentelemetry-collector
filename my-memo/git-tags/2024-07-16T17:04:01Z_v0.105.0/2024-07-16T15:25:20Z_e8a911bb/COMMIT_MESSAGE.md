commit e8a911bbdbdb1ca121354c0f822faaad8ce61d24
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Tue Jul 16 17:25:20 2024 +0200

    [confmap] Allow using map[string]any as string (#10615)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    Allow using strings parseable in YAML as `map[string]any` in inline
    position
    
    #### Link to tracking issue
    
    Relates to #10605 (does not fix it since it's not in inline position)
