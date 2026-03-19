commit 40cd9bab071a9738568bb878450b72675b575f40
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Aug 25 16:19:20 2022 -0700

    Enforce naming conventions for Invalid[Trace|Span]ID (#5969)
    
    * Enforce naming conventions for Invalid[Trace|Span]ID
    
    See the rules here https://github.com/open-telemetry/opentelemetry-collector/blob/main/CONTRIBUTING.md#naming-convention
    
    Also this changes Invalid -> Empty to match the "IsEmpty" func.
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
    
    * Update traceid.go
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
