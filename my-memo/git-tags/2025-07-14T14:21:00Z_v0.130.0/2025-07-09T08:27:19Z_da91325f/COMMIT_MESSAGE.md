commit da91325fa6d28765c126ff542da130e946e696f8
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Wed Jul 9 10:27:19 2025 +0200

    Update Pipeline Component Telemetry RFC (#13260)
    
    #### Description
    
    This PR updates the [Pipeline Component Telemetry
    RFC](https://github.com/open-telemetry/opentelemetry-collector/blob/main/docs/rfcs/component-universal-telemetry.md)
    with the following changes:
    - Reflect implementation choices that have been made since the RFC was
    written:
    1. using instrumentation scope attributes instead of datapoint
    attributes to identify component instances
    (see discussion in #12217 and
    https://github.com/open-telemetry/opentelemetry-go/issues/6404)
    2. automatically injecting these attributes, without changes to
    component code
        3. changing the instrumentation scope name used for pipeline metrics
    - Slightly change the semantics of `outcome = refused`:
    
    The current planned behavior (from #11956) is that, in the case of a
    pipeline A → B where component B returns an error, the "consumed" metric
    for B and the "produced" metric for A should both have `outcome =
    failure`.
    
    I fear that this may lead users to think that a failure occurred in A,
    and would like to restrict `outcome = failure` to only be associated
    with the component that "failed", ie. component B. The "produced" metric
    associated with A would instead have `outcome = refused`.
    
    This incidentally makes implementation slightly easier, since an
    instrumentation layer will not need different error wrapping behavior
    between the "producer" layer and the "consumer" layer.
    
        See draft PR #13234 for an example implementation.
    
    As this is a non-trivial change to an RFC, it may need to follow the RFC
    process.
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
