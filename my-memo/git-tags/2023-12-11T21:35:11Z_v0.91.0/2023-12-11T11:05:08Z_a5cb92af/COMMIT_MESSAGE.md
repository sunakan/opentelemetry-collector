commit a5cb92afdf4c6495a9d2b8599911390ee410257a
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Mon Dec 11 12:05:08 2023 +0100

    [VERSIONING.md] Reorganize and clarify compatibility guarantees (#8812)
    
    **Description:** Reorganize `VERSIONING.md`, specify compatibility
    guarantees that have already been discussed and answer questions on
    #8002.
    
    Three new guarantees in the document had already been discussed
    elsewhere:
    
    - String representation:
    https://github.com/open-telemetry/opentelemetry-collector/issues/7625#issuecomment-1674789807
    - Go version compatibility: Mentioned [on
    README.md](https://github.com/open-telemetry/opentelemetry-collector?tab=readme-ov-file#compatibility)
    - Dependency updates: Discussed in private, most recently in relation to
    whether #7095 should block `pdata`'s 1.0 (consensus seems to be that it
    should not).
    
    Regarding the questions mentioned on #8002:
    
    > Does adding new validation rules mean a breaking change?
    
    Generally, yes except when the configuration was already invalid (i.e.
    the Collector did not work properly with it).
    
    > Should we offer a "NewDefault...." for each config and say that the
    behavior of the config is stable only if initialized with NewDefault?
    
    I did not add anything for this one. I think we should discuss it, but:
    - I don't think there is a sensible output for `NewDefault...` for all
    configurations (e.g. for `confignet.TCPAddr`, what would the default
    be?)
    - It seems to me that we should handle configuration validity through
    `Validate`, and not through `NewDefault...`. `NewDefault` may help but
    ultimately we need to verify through `Validate`.
    
    > Is adding new fields means breaking change? Let's assume someone
    "squash" the message into another message, then adding a field with same
    mapstruct value will be a breaking change, what do we do with that? What
    are the rules we follow.
    
    This was already in this document, where we had decided that adding new
    fields was okay. I think it would be too stringent to bar us from adding
    new fields.
    
    **Link to tracking Issue:** Fixes #8002
    
    ---------
    
    Co-authored-by: Yang Song <songy23@users.noreply.github.com>
