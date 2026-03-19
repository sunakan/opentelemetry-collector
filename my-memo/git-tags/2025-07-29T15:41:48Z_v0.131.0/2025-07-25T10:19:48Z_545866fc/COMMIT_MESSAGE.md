commit 545866fcf80da99d7ca6c53c60ce0220bc7ef3ce
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Fri Jul 25 12:19:48 2025 +0200

    Emit `outcome: failure` in obsconsumer (#13234)
    
    #### Description
    The last remaining part of #12676 is to implement the `outcome: failure`
    part of the Pipeline Component Telemetry RFC ([see
    here](https://github.com/open-telemetry/opentelemetry-collector/blob/main/docs/rfcs/component-universal-telemetry.md#auto-instrumented-metrics)).
    This is done by introducing a `downstream` error wrapper struct, to
    distinguish between errors coming from the next component from errors
    bubbled from further downstream.
    
    #### Important note
    This PR implements things slightly differently from what the text of the
    RFC describes.
    
    If a pipeline contains components `A → B` and an error occurs in B, this
    PR records:
    - `otelcol.component.outcome = failure` in the `otelcol.*.consumed.*`
    metric for B
    - `otelcol.component.outcome = refused` in the `otelcol.*.produced.*`
    metric for A
    
    whereas the RFC would set both `outcome`s to `failure`.
    
    This is programmatically simpler — no need to have different behavior
    between the `obsconsumer` around the output of A and the one around the
    input of B — but more importantly, I think it is clearer for users as
    well: `outcome = failure` only occurs on metrics associated with the
    component where the failure actually occurred.
    
    This subtlety wasn't discussed in-depth in #11956 which introduced
    `outcome = refused`, so I took the liberty to make this change. If
    necessary, I can file another RFC amendment to match, or, if there are
    objections, implement the RFC as-is instead.
    
    #### Link to tracking issue
    Fixes #12676
    
    #### Testing
    I've updated the existing tests in `obsconsumer` to expect a
    `downstream`-wrapped error to exit the `obsconsumer` layer. I may add
    more tests later.
    
    #### Documentation
    None.
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
