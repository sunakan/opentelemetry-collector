commit 86d886cdc7a1a7c6f1f8564a80c051032b560a86
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Nov 17 13:50:30 2022 -0800

    Deprecate Config.Validate() in favor of component.ValidateConfig (#6572)
    
    * Deprecate Config.Validate() in favor of component.ValidateConfig
    
    This PR is "split" from https://github.com/open-telemetry/opentelemetry-collector/pull/6544, to avoid breaking changes and go via deprecation.
    
    It is a bit hacky, but better than breaking everyone who uses this interface.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Update config/receiver.go
    
    Co-authored-by: Dmitrii Anoshin <anoshindx@gmail.com>
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    Co-authored-by: Dmitrii Anoshin <anoshindx@gmail.com>
