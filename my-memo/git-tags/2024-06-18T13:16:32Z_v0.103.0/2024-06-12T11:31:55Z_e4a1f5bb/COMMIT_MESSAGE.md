commit e4a1f5bbf4419f4888775899c68f6e17dd024d79
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Wed Jun 12 05:31:55 2024 -0600

    [confmap] Only log error in expandconverter if expansion actually happens (#10392)
    
    #### Description
    Fix a bug where we printed a warning log when we were not expanding a
    value
    
    #### Link to tracking issue
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/10356
    
    #### Testing
    Tested manually
