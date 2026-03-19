commit 2a7dd6a54e2c65f57c78ac173d8541dd40135f38
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Jan 10 09:54:16 2022 -0800

    Remove expand cases that cannot happen with config.Map (#4649)
    
    Using Koanf fixed the issue with AllKeys that did not correctly flatten the input map.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
