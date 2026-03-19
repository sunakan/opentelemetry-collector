commit e76145a63a597531dcc7fd109f8cf8c620135cc9
Author: Sindy Li <sindy.li@snowflake.com>
Date:   Tue Nov 5 19:27:42 2024 -0800

    [chore] [exporterqueue] Add splitting to the experimental pull-based batcher (#11580)
    
    #### Description
    
    This PR follows
    https://github.com/open-telemetry/opentelemetry-collector/pull/11546 and
    add support for splitting (i.e. support setting a maximum request size)
    
    Design doc:
    
    https://docs.google.com/document/d/1y5jt7bQ6HWt04MntF8CjUwMBBeNiJs2gV4uUZfJjAsE/edit?usp=sharing
    
    #### Link to tracking issue
    
    https://github.com/open-telemetry/opentelemetry-collector/issues/8122
    https://github.com/open-telemetry/opentelemetry-collector/issues/10368
