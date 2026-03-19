commit 8038c69493798b2a87496d806159c7443249972e
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Thu Oct 23 13:58:30 2025 -0700

    [xpdata] Add high-level API for managing entities attached to resources (#14039)
    
    Introduce `Entity`, `EntitySlice`, and `EntityAttributeMap` types that
    provide a user-friendly interface for working with resource entities.
    The new API ensures consistency between entity and resource attributes
    by sharing the underlying attribute map, and prevents attribute
    conflicts between entities. This API should eventually replace the
    generated protobuf-based API for better usability.
    
    Resolves
    https://github.com/open-telemetry/opentelemetry-collector/issues/14042
