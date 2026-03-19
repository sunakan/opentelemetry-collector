commit 6c4c8a4278a0fbedeeb318b2e402cd9b36bf3be7
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Mar 30 08:29:54 2020 -0700

    Remove unnecessary condition to have at least one processor (#744)
    
    This makes testing the collector locally harder. Also the condition is not enforced because having a disabled processor in the pipeline passes that condition which makes it not very useful.
