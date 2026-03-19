commit a77ce755dc2d0974307335fb013ac6bf0011e327
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Jun 28 23:05:18 2021 +0300

    zipkinv2 implement directly Marshaler/Unmarshaler interface (#3505)
    
    Keep the To/From translator, but update them to accept/return zipkin model.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
