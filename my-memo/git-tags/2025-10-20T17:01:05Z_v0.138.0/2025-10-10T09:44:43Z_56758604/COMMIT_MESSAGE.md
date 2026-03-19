commit 567586048b9f0f1818e064ab616b3f66f89e5646
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Fri Oct 10 11:44:43 2025 +0200

    [exporterhelper] Add default value for sending_queue::batch section (#13865)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Adds default value for `sending_queue::batch` section. This means that
    setting
    
    ```yaml
    sending_queue:
      batch:
    ```
    
    will now result in the same behavior as setting:
    
    ```yaml
    sending_queue:
      batch:
       sizer: items
       flush_timeout: 200ms
       min_size: 8192
    ```
    
    This is useful for migrating from the batch processor.
    
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    Updates documentation from exporter/exporterhelper
    
    ---------
    
    Co-authored-by: Joshua MacDonald <jmacd@users.noreply.github.com>
