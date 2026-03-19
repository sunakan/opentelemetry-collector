commit d4f068db607e1feab55ff327c2b2ddb03a545728
Author: JBD <jbd@amazon.com>
Date:   Mon Jul 12 19:19:41 2021 -0700

    Allow users to set min and max TLS versions (#3591)
    
    * Allow users to set min and max TLS versions
    
    Users want to be to choose the min and max versions they want to allow. Introduce two new settings to make the version range configurable.
    
    * Make linter happy
