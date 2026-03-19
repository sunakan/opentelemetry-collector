commit 8ac40a01a5ff7d43777eefb3764fece4d7050fe7
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Mon Dec 16 10:16:23 2024 +0100

    Define observability requirements for stable components (#11772)
    
    ## Description
    
    This PR defines observability requirements for components at the
    "Stable" stability levels. The goal is to ensure that Collector
    pipelines are properly observable, to help in debugging configuration
    issues.
    
    #### Approach
    
    - The requirements are deliberately not too specific, in order to be
    adaptable to each specific component, and so as to not over-burden
    component authors.
    - After discussing it with @mx-psi, this list of requirements explicitly
    includes things that may end up being emitted automatically as part of
    the Pipeline Instrumentation RFC (#11406), with only a note at the
    beginning explaining that not everything may need to be implemented
    manually.
    
    Feel free to share if you don't think this is the right approach for
    these requirements.
    
    #### Link to tracking issue
    Resolves #11581
    
    ## Important note regarding the Pipeline Instrumentation RFC
    
    I included this paragraph in the part about error count metrics:
    > The goal is to be able to easily pinpoint the source of data loss in
    the Collector pipeline, so this should either:
    >   - only include errors internal to the component, or;
    > - allow distinguishing said errors from ones originating in an
    external service, or propagated from downstream Collector components.
    
    The [Pipeline Instrumentation
    RFC](https://github.com/open-telemetry/opentelemetry-collector/blob/main/docs/rfcs/component-universal-telemetry.md)
    (hereafter abbreviated "PI"), once implemented, should allow monitoring
    component errors via the `outcome` attribute, which is either `success`
    or `failure`, depending on whether the `Consumer` API call returned an
    error.
    
    Note that this does not work for receivers, or allow differentiating
    between different types of errors; for that reason, I believe additional
    component-specific error metrics will often still be required, but it
    would be nice to cover as many cases as possible automatically.
    
    However, at the moment, errors are (usually) propagated upstream through
    the chain of `Consume` calls, so in case of error the `failure` state
    will end up applied to all components upstream of the actual source of
    the error. This means the PI metrics do not fit the first bullet point.
    
    Moreover, I would argue that even post-processing the PI metrics does
    not reliably allow distinguishing the ultimate source of errors (the
    second bullet point). One simple idea is to compute
    `consumed.items{outcome:failure} - produced.items{outcome:failure}` to
    get the number of errors originating in a component. But this only works
    if output items map one-to-one to input items: if a processor or
    connector outputs fewer items than it consumes (because it aggregates
    them, or translates to a different signal type), this formula will
    return false positives. If these false positives are mixed with real
    errors from the component and/or from downstream, the situation becomes
    impossible to analyze by just looking at the metrics.
    
    For these reasons, I believe we should do one of four things:
    1. Change the way we use the `Consumer` API to no longer propagate
    errors, making the PI metric outcomes more precise.
    We could catch errors in whatever wrapper we already use to emit the PI
    metrics, log them for posterity, and simply not propagate them.
    Note that some components already more or less do this, such as the
    `batchprocessor`, but this option may in principle break components
    which rely on downstream errors (for retry purposes for example).
    3. Keep propagating errors, but modify or extend the RFC to require
    distinguishing between internal and propagated errors (maybe add a third
    `outcome` value, or add another attribute).
    This could be implemented by somehow propagating additional state from
    one `Consume` call to another, allowing us to establish the first
    appearance of a given error value in the pipeline.
    5. Loosen this requirement so that the PI metrics suffice in their
    current state.
    6. Leave everything as-is and make component authors implement their own
    somewhat redundant error count metrics.
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
