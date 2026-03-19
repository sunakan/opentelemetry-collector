commit 00fea83ec240f87d4c21ef39145de7f5ebad8fcf
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Apr 4 09:47:19 2022 -0700

    Remove deprecated funcs from otlpgrpc (#5144)
    
    Because, most likely for the moment only otlp exporter/receiver is using this package, we can remove this after just one version, no third-party deps.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
