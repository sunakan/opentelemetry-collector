commit 0609f1c8b5674459f362b3e355b3e03592cf4382
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Feb 18 05:26:53 2025 +0000

    Update module google.golang.org/protobuf to v1.36.5 (#12416)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    |
    [google.golang.org/protobuf](https://redirect.github.com/protocolbuffers/protobuf-go)
    | `v1.35.2` -> `v1.36.5` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/google.golang.org%2fprotobuf/v1.36.5?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/google.golang.org%2fprotobuf/v1.36.5?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/google.golang.org%2fprotobuf/v1.35.2/v1.36.5?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/google.golang.org%2fprotobuf/v1.35.2/v1.36.5?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>protocolbuffers/protobuf-go
    (google.golang.org/protobuf)</summary>
    
    ###
    [`v1.36.5`](https://redirect.github.com/protocolbuffers/protobuf-go/releases/tag/v1.36.5)
    
    [Compare
    Source](https://redirect.github.com/protocolbuffers/protobuf-go/compare/v1.36.4...v1.36.5)
    
    **Full Changelog**:
    https://github.com/protocolbuffers/protobuf-go/compare/v1.36.4...v1.36.5
    
    Bug fixes:
    [CL/644437](https://go-review.googlesource.com/c/protobuf/+/644437):
    protogen: fix name mangling for fields with identical GoCamelCase
    
    Maintenance:
    [CL/641655](https://go-review.googlesource.com/c/protobuf/+/641655):
    all: remove weak field support
    
    ###
    [`v1.36.4`](https://redirect.github.com/protocolbuffers/protobuf-go/releases/tag/v1.36.4)
    
    [Compare
    Source](https://redirect.github.com/protocolbuffers/protobuf-go/compare/v1.36.3...v1.36.4)
    
    **Full Changelog**:
    https://github.com/protocolbuffers/protobuf-go/compare/v1.36.3...v1.36.4
    
    Bug fixes:
    [CL/642975](https://go-review.googlesource.com/c/protobuf/+/642975):
    reflect/protodesc: fix panic when working with dynamicpb
    
    Maintenance:
    [CL/643276](https://go-review.googlesource.com/c/protobuf/+/643276):
    internal_gengo: avoid allocations in rawDescGZIP() accessors
    [CL/642857](https://go-review.googlesource.com/c/protobuf/+/642857):
    internal_gengo: switch back from string literal to hex byte slice
    [CL/642055](https://go-review.googlesource.com/c/protobuf/+/642055):
    internal_gengo: use unsafe.StringData() to avoid a descriptor copy
    [CL/638135](https://go-review.googlesource.com/c/protobuf/+/638135):
    internal_gengo: store raw descriptor in .rodata section
    
    ###
    [`v1.36.3`](https://redirect.github.com/protocolbuffers/protobuf-go/releases/tag/v1.36.3)
    
    [Compare
    Source](https://redirect.github.com/protocolbuffers/protobuf-go/compare/v1.36.2...v1.36.3)
    
    **Full Changelog**:
    https://github.com/protocolbuffers/protobuf-go/compare/v1.36.2...v1.36.3
    
    Bug fixes:
    [CL/642575](https://go-review.googlesource.com/c/protobuf/+/642575):
    reflect/protodesc: fix panic when working with dynamicpb
    [CL/641036](https://go-review.googlesource.com/c/protobuf/+/641036):
    cmd/protoc-gen-go: remove json struct tags from unexported fields
    
    User-visible changes:
    [CL/641876](https://go-review.googlesource.com/c/protobuf/+/641876):
    proto: add example for GetExtension, SetExtension
    [CL/642015](https://go-review.googlesource.com/c/protobuf/+/642015):
    runtime/protolazy: replace internal doc link with external link
    
    Maintenance:
    [CL/641635](https://go-review.googlesource.com/c/protobuf/+/641635):
    all: split flags.ProtoLegacyWeak out of flags.ProtoLegacy
    [CL/641019](https://go-review.googlesource.com/c/protobuf/+/641019):
    internal/impl: remove unused exporter parameter
    [CL/641018](https://go-review.googlesource.com/c/protobuf/+/641018):
    internal/impl: switch to reflect.Value.IsZero
    [CL/641035](https://go-review.googlesource.com/c/protobuf/+/641035):
    internal/impl: clean up unneeded Go<1.12 MapRange() alternative
    [CL/641017](https://go-review.googlesource.com/c/protobuf/+/641017):
    types/dynamicpb: switch atomicExtFiles to atomic.Uint64 type
    
    ###
    [`v1.36.2`](https://redirect.github.com/protocolbuffers/protobuf-go/releases/tag/v1.36.2)
    
    [Compare
    Source](https://redirect.github.com/protocolbuffers/protobuf-go/compare/v1.36.1...v1.36.2)
    
    **Full Changelog**:
    https://github.com/protocolbuffers/protobuf-go/compare/v1.36.1...v1.36.2
    
    Bug fixes:
    [CL/638515](https://go-review.googlesource.com/c/protobuf/+/638515):
    internal/impl: fix WhichOneof() to work with synthetic oneofs
    
    ###
    [`v1.36.1`](https://redirect.github.com/protocolbuffers/protobuf-go/releases/tag/v1.36.1)
    
    [Compare
    Source](https://redirect.github.com/protocolbuffers/protobuf-go/compare/v1.36.0...v1.36.1)
    
    **Full Changelog**:
    https://github.com/protocolbuffers/protobuf-go/compare/v1.36.0...v1.36.1
    
    Bug fixes:
    [CL/638495](https://go-review.googlesource.com/c/protobuf/+/638495):
    internal/impl: revert IsSynthetic() check to fix panic
    
    Maintenance:
    [CL/637475](https://go-review.googlesource.com/c/protobuf/+/637475):
    internal/errors: delete compatibility code for Go before 1.13
    
    ###
    [`v1.36.0`](https://redirect.github.com/protocolbuffers/protobuf-go/releases/tag/v1.36.0)
    
    [Compare
    Source](https://redirect.github.com/protocolbuffers/protobuf-go/compare/v1.35.2...v1.36.0)
    
    **Full Changelog**:
    https://github.com/protocolbuffers/protobuf-go/compare/v1.35.2...v1.36.0
    
    User-visible changes:
    
    [CL/635139](https://go-review.googlesource.com/c/protobuf/+/635139):
    src/google/protobuf: document UnmarshalJSON / API level behavior
    [CL/635138](https://go-review.googlesource.com/c/protobuf/+/635138):
    reflect/protoreflect: use \[] syntax to reference method
    [CL/635137](https://go-review.googlesource.com/c/protobuf/+/635137):
    proto: add reference to size semantics with lazy decoding to comment
    [CL/634818](https://go-review.googlesource.com/c/protobuf/+/634818):
    compiler/protogen: allow overriding API level from --go_opt
    [CL/634817](https://go-review.googlesource.com/c/protobuf/+/634817):
    cmd/protoc-gen-go: generate \_protoopaque variant for hybrid
    [CL/634816](https://go-review.googlesource.com/c/protobuf/+/634816):
    all: regenerate.bash for Opaque API
    [CL/634815](https://go-review.googlesource.com/c/protobuf/+/634815):
    all: Release the Opaque API
    [CL/634015](https://go-review.googlesource.com/c/protobuf/+/634015):
    types/descriptorpb: regenerate using latest protobuf v29.1 release
    [CL/632735](https://go-review.googlesource.com/c/protobuf/+/632735):
    internal/impl: skip synthetic oneofs in messageInfo
    [CL/627876](https://go-review.googlesource.com/c/protobuf/+/627876):
    all: start v1.35.2-devel
    
    </details>
    
    ---
    
    ### Configuration
    
    📅 **Schedule**: Branch creation - "on tuesday" (UTC), Automerge - At any
    time (no schedule defined).
    
    🚦 **Automerge**: Disabled by config. Please merge this manually once you
    are satisfied.
    
    ♻ **Rebasing**: Whenever PR becomes conflicted, or you tick the
    rebase/retry checkbox.
    
    🔕 **Ignore**: Close this PR and you won't be reminded about this update
    again.
    
    ---
    
    - [ ] <!-- rebase-check -->If you want to rebase/retry this PR, check
    this box
    
    ---
    
    This PR was generated by [Mend Renovate](https://mend.io/renovate/).
    View the [repository job
    log](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzOS4xNjcuMSIsInVwZGF0ZWRJblZlciI6IjM5LjE2Ny4xIiwidGFyZ2V0QnJhbmNoIjoibWFpbiIsImxhYmVscyI6WyJkZXBlbmRlbmNpZXMiLCJyZW5vdmF0ZWJvdCJdfQ==-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
