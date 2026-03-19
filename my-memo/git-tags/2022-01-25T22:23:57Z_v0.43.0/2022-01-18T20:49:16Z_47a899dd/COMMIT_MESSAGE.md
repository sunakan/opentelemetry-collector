commit 47a899dda0e39afd2b57346434e77dafd4bcc2f3
Author: Xiangyu Zhu <frefreak.zxy@gmail.com>
Date:   Wed Jan 19 04:49:16 2022 +0800

    Add `max_request_body_size` to confighttp.HTTPServerSettings (#4677)
    
    * add max_recv_size to otlpreceiver
    
    * lint
    
    * update doc
    
    * gosec warns G107 for http.Post but not http.NewRequest?
    
    * rename to max_request_body_size
    
    * also update changelog
    
    * also update doc to mention default 0 value
    
    * rename unexposed name from maxRecvSize to maxRequestBodySize
    
    * remove unnecessary `maxRequestBodySize` field in toServerOptions
