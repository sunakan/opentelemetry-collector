commit 3c6ce2bb5b7012927c910b0d114a5d7837e6f08d
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Feb 12 14:42:58 2025 -0800

    Fix otlphttpexporter parsing logic for Retry-After (#12366)
    
    Small improvement to not create a throttled error when delay is 0, same
    behavior.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
