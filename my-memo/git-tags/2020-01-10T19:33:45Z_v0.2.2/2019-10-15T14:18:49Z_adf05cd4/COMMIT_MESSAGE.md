commit adf05cd4f49adde01abfe37309c3ff33fa47bd01
Author: Paulo Janotti <paulo@omnition.io>
Date:   Tue Oct 15 07:18:49 2019 -0700

    Validate configuration object tags (#383)
    
    * Validate configuration object tags
    
    Adds a validation via reflection that checks if the 'mapstructure' tags are following the desired naming conventions desired for the config file. This becomes a runtime validation so even if not properly tested by some component the inconsistency is captured.
    
    * Fix typo in comment
    
    * Delete leftover commented code
    
    * Add comments to CreateDefaultConfig and respective tests w/ ValidateConfig
