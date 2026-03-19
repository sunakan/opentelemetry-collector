commit 1c4726a3823473eb704f32c14b14beb7d39b6932
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Tue Jan 28 13:41:10 2025 +0100

    Amend Pipeline Component Telemetry RFC to add a "rejected" outcome (#11956)
    
    ### Context
    
    The [Pipeline Component Telemetry
    RFC](https://github.com/open-telemetry/opentelemetry-collector/blob/main/docs/rfcs/component-universal-telemetry.md)
    was recently accepted (#11406). The document states the following
    regarding error monitoring:
    > For both [consumed and produced] metrics, an `outcome` attribute with
    possible values `success` and `failure` should be automatically
    recorded, corresponding to whether or not the corresponding function
    call returned an error. Specifically, consumed measurements will be
    recorded with `outcome` as `failure` when a call from the previous
    component the `ConsumeX` function returns an error, and `success`
    otherwise. Likewise, produced measurements will be recorded with
    `outcome` as `failure` when a call to the next consumer's `ConsumeX`
    function returns an error, and `success` otherwise.
    
    
    [Observability requirements for stable pipeline
    components](https://github.com/open-telemetry/opentelemetry-collector/blob/main/docs/component-stability.md#observability-requirements)
    were also recently merged (#11772). The document states the following
    regarding error monitoring:
    > The goal is to be able to easily pinpoint the source of data loss in
    the Collector pipeline, so this should either:
    > - only include errors internal to the component, or;
    > - allow distinguishing said errors from ones originating in an
    external service, or propagated from downstream Collector components.
    
    Because errors are typically propagated across `ConsumeX` calls in a
    pipeline (except for components with an internal queue like
    `processor/batch`), the error observability mechanism proposed by the
    RFC implies that Pipeline Telemetry will record failures for every
    component interface upstream of the component that actually emitted the
    error, which does not match the goals set out in the observability
    requirements, and makes it much harder to tell which component errors
    are coming from from the emitted telemetry.
    
    ### Description
    
    This PR amends the Pipeline Component Telemetry RFC with the following:
    - restrict the `outcome=failure` value to cases where the error comes
    from the very next component (the component on which `ConsumeX` was
    called);
    - add a third possible value for the `outcome` attribute: `rejected`,
    for cases where an error observed at an interface comes from further
    downstream (the component did not "fail", but its output was
    "rejected");
    - propose a mechanism to determine which of the two values should be
    used.
    
    The current proposal for the mechanism is for the pipeline
    instrumentation layer to wrap errors in an unexported `downstream`
    struct, which upstream layers could check for with `errors.As` to check
    whether the error has already been "attributed" to a component. This is
    the same mechanism currently used for tracking permanent vs. retryable
    errors. Please check the diff for details.
    
    ### Possible alternatives
    
    There are a few alternatives to this amendment, which were discussed as
    part of the observability requirements PR:
    - loosen the observability requirements for stable components to not
    require distinguishing internal errors from downstream ones → makes it
    harder to identify the source of an error;
    - modify the way we use the `Consumer` API to no longer propagate errors
    upstream → prevents proper propagation of backpressure through the
    pipeline (although this is likely already a problem with the `batch`
    prcessor);
    - let component authors make their own custom telemetry to solve the
    problem → higher barrier to entry, especially for people wanting to
    opensource existing components.
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
