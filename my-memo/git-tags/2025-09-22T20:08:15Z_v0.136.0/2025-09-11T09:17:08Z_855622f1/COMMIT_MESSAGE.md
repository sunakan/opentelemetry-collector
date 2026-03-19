commit 855622f136d667a6a1a480905f86911916bd1f29
Author: Andrew Wilkins <axw@elastic.co>
Date:   Thu Sep 11 17:17:08 2025 +0800

    [chore] service: register process metrics unconditionally (#13777)
    
    #### Description
    
    Don't check the metrics level/readers before registering process
    metrics. The registrations will be no-ops if metrics level is "none" or
    there are no readers, in which case the overhead is negligible.
    
    This is also necessary as part of
    https://github.com/open-telemetry/opentelemetry-collector/issues/4970,
    since the telemetry config will become opaque.
    
    #### Link to tracking issue
    
    Part of #4970
    
    #### Testing
    
    N/A
    
    #### Documentation
    
    N/A
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
