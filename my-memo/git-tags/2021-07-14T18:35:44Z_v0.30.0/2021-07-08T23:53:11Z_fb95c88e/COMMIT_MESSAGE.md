commit fb95c88e72fa98f31b694703ec2787fe09381154
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Jul 8 16:53:11 2021 -0700

    Change internal tracing to use otel trace (#3567)
    
    For the moment we rely on the global TracerProvider, in a future PR will change that.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
