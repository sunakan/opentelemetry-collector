commit e0c09f012dbb9e8869ab86ab894ffe09df6d02a4
Author: Alex Boten <aboten@lightstep.com>
Date:   Sat Jun 17 12:07:13 2023 -0700

    split configgrpc, confighttp, and config/internal  (#7921)
    
    These are the last of the config packages. Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/7895
    
    I decided to submit these last 3 modules together to reduce review
    cycles. The use of the `internal` module is a result of the conversation
    w/ @mx-psi here:
    https://github.com/open-telemetry/opentelemetry-collector/issues/7895#issuecomment-1593284577
    
    ---------
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
