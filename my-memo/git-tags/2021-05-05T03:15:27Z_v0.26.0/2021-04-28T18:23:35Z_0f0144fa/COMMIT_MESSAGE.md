commit 0f0144fa8084ae18fe6b57cf3867da4adc41bc0c
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Apr 28 11:23:35 2021 -0700

    Remove premature protection for Start/Stop in jaeger receiver (#3037)
    
    No other component implement this, and we should trust the service that it does the right thing.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
