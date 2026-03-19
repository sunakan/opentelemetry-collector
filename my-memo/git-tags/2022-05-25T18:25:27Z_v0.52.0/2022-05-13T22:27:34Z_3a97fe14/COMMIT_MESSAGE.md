commit 3a97fe14fbbe06463c4c79f249e772a58d75741b
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Fri May 13 15:27:34 2022 -0700

    Deprecate `config.Config` and `config.Service`, use `service.Config*` (#4608)
    
    * Deprecate `config.Config` and `config.Service`, use `service.Config*`
    
    Fixes https://github.com/open-telemetry/opentelemetry-collector/issues/4605
    
    Followup PRs:
    * Move service/internal/configunmarshaler as private struct into service/ to avoid circular dependency (no public API change)
    * Change service/internal/builders to private structs in service/ or don't pass config, instead only pass the components and pipeline from the config.
    
    While doing this, I realize that the "service" section in our config is a bit useless, we can think of promoting everything under "service::" one level up.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Update moved_service.go
