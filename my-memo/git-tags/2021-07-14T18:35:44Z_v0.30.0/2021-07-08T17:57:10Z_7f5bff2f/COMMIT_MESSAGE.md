commit 7f5bff2ff4e8d25fc43a921f3bb2bca53e10aa8b
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Jul 8 10:57:10 2021 -0700

    Change exporterhelper to accept ExporterCreateSettings instead of just logger (#3569)
    
    In a future PR ExporterCreateSettings will carry Tracer and Meter for custom tracing/metrics.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
