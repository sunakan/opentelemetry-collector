commit ed74d6b575c67357b88a2a3375686ab381eab58e
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Mar 1 14:17:25 2021 -0800

    Fix OTLP receiver Shutdown() bug (#2564)
    
    Ensure that the receiver finishes all ongoing requests, and does not accept any new request after shutdown is finished.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
