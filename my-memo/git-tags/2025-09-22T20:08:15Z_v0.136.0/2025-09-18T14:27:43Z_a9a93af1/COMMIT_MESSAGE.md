commit a9a93af1aa4a9523b2c93889a194d01aaa93fc2f
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Thu Sep 18 16:27:43 2025 +0200

    [chore][exporterhelper] Clarify that you need to set at least one of the fields (#13864)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    When I first read this I mistakenly assumed that `sending_queue::batch`
    had a default configuration with `configoptional.Default` and thus that
    `sending_queue::batch` would work, but this is not the case: it is set
    to `configoptional.None`.
    
    This means that
    
    ```
    sending_queue:
      enabled: true
      batch:
    ```
    
    is equivalent to doing
    
    ```
    sending_queue:
      enabled: true
    ```
    
    to enable it one must at least do something like:
    
    ```
    sending_queue:
      batch:
        sizer: items
    ```
