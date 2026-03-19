commit 73ee7ead1aa537009c95c54842c1239163c83cbc
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Oct 20 10:09:34 2022 -0700

    Change to non-nullable PartialSuccess (#6364)
    
    To avoid the need of checking if the message is present, see https://github.com/open-telemetry/opentelemetry-proto/blob/main/opentelemetry/proto/collector/trace/v1/trace_service.proto#L58
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
