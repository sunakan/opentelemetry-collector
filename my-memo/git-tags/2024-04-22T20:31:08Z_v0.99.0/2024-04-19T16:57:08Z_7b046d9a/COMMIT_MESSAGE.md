commit 7b046d9aaf94e92b2bfc6c25bec4ac33ba5082f2
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Fri Apr 19 18:57:08 2024 +0200

    [cmd/builder] Remove undocumented strictness check (#9999)
    
    Partially reverts #9897. This was not documented on the original PR and
    is IMO too strict.
    We likely want to allow for some skew between versions.
    
    Mentioned on
    https://github.com/open-telemetry/opentelemetry-collector/pull/9513#issuecomment-2065586307
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
