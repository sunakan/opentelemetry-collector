commit 1cbae966c99eab34818ed3ef88472611762e0357
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Sun Jul 12 07:46:57 2020 -0700

    Bump CPU limit for a TraceNoBackend10kSPS/JaegerGRPC load test (#1324)
    
    TraceNoBackend10kSPS/JaegerGRPC/NoMemoryLimit load test is flaky and often goes over 60%. Looking at the history wasn't able to identify a if something might cause a regression.
