commit b05c0f3ffcecc5913cadb139db49414fa8e3b138
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Jun 21 14:15:35 2022 +0300

    Refactor pipelines builder, fix some issues (#5512)
    
    * Unconfigured receivers are not identified, this was not a real problem in final binaries since the validation of the config catch this.
    * Allow configurations to contain "unused" receivers. Receivers that are configured but not used in any pipeline, this was possible already for exporters and processors.
    * Remove the enforcement/check that Receiver factories create the same instance for the same config.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
