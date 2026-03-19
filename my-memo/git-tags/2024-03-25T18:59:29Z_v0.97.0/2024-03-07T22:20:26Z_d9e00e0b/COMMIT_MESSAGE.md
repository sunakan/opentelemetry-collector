commit d9e00e0bc0c370cca9c6a0d2948a0eb1dd97efc1
Author: molejnik88 <maciej.olejnik88@gmail.com>
Date:   Thu Mar 7 23:20:26 2024 +0100

    [config/configtls] Validate MinVersion and MaxVersion (#9664)
    
    **Description:**
    Add `Validate()` method to `TLSSetting` and validate tls `min_version`
    and `max_version`.
    
    **Link to tracking Issue:**
    #9475
