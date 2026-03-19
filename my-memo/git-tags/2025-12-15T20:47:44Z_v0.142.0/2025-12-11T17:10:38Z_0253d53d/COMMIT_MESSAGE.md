commit 0253d53da388271405b5cf6fa4fce1fd9466f308
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Thu Dec 11 09:10:38 2025 -0800

    [chore] [mdatagen] Update entities terminology in generated docs (#14283)
    
    Similar to
    https://github.com/open-telemetry/opentelemetry-collector/pull/14275.
    Updates mdatagen documentation template to use "Identifying Attributes"
    and "Descriptive Attributes" terminology (instead of "Identity
    Attributes" and "Description Attributes") when documenting entities.
    
    This aligns the generated documentation with OpenTelemetry specification
    terminology for attributes in entity context, as clarified in
    open-telemetry/opentelemetry-specification#4700
