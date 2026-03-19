commit ec4ad0c650e5c1f1c50bc48eb4e6aaa05d4d1d30
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Mon Jan 13 15:54:33 2020 -0500

    Remove workers from OpenCensus receiver implementation (#497)
    
    Workers were unnecessary complication and did not provide any measurable
    performance gains.
    
    In addition they were decoupling receiver from subsequent processors which
    makes difficult upcoming implementation of backpressure in the pipeline
    (from processors to receivers).
    
    Test results that shows that worker give no performance benefits (any
    differences are within the measurement error margin):
    
    Without workers (this commit):
    
    Test                                    |Result|Duration|CPU Avg%|CPU Max%|RAM Avg MiB|RAM Max MiB|Sent Items|Received Items|
    ----------------------------------------|------|-------:|-------:|-------:|----------:|----------:|---------:|-------------:|
    Trace10kSPS/OpenCensus                  |PASS  |     16s|    22.7|    25.9|         37|         45|    149880|        149880|
    
    With workers (latest `master` branch):
    
    Test                                    |Result|Duration|CPU Avg%|CPU Max%|RAM Avg MiB|RAM Max MiB|Sent Items|Received Items|
    ----------------------------------------|------|-------:|-------:|-------:|----------:|----------:|---------:|-------------:|
    Trace10kSPS/OpenCensus                  |PASS  |     16s|    23.3|    24.9|         37|         46|    149920|        149920|
