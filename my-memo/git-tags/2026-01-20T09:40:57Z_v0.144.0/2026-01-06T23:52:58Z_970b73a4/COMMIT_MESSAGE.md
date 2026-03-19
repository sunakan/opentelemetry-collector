commit 970b73a436365a62f929e3d97036ae32c61c576a
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Jan 6 23:52:58 2026 +0000

    chore(deps): update module google.golang.org/protobuf to v1.36.11 (#14387)
    
    This PR contains the following updates:
    
    | Package | Change |
    [Age](https://docs.renovatebot.com/merge-confidence/) |
    [Confidence](https://docs.renovatebot.com/merge-confidence/) |
    |---|---|---|---|
    |
    [google.golang.org/protobuf](https://redirect.github.com/protocolbuffers/protobuf-go)
    | `v1.36.8` → `v1.36.11` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/google.golang.org%2fprotobuf/v1.36.11?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/google.golang.org%2fprotobuf/v1.36.8/v1.36.11?slim=true)
    |
    |
    [google.golang.org/protobuf](https://redirect.github.com/protocolbuffers/protobuf-go)
    | `v1.36.10` → `v1.36.11` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/google.golang.org%2fprotobuf/v1.36.11?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/google.golang.org%2fprotobuf/v1.36.10/v1.36.11?slim=true)
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
    [`v1.36.11`](https://redirect.github.com/protocolbuffers/protobuf-go/releases/tag/v1.36.11)
    
    [Compare
    Source](https://redirect.github.com/protocolbuffers/protobuf-go/compare/v1.36.10...v1.36.11)
    
    **Full Changelog**:
    <https://github.com/protocolbuffers/protobuf-go/compare/v1.36.10...v1.36.11>
    
    User-visible changes:
    [CL/726780](https://go-review.googlesource.com/c/protobuf/+/726780):
    encoding/prototext: Support URL chars in type URLs in text-format.
    
    Bug fixes:
    [CL/728680](https://go-review.googlesource.com/c/protobuf/+/728680):
    internal/impl: check recursion limit in lazy decoding validation
    [CL/711015](https://go-review.googlesource.com/c/protobuf/+/711015):
    reflect/protodesc: fix handling of import options in dynamic builds
    
    Maintenance:
    [CL/728681](https://go-review.googlesource.com/c/protobuf/+/728681):
    reflect/protodesc: add support for edition unstable
    [CL/727960](https://go-review.googlesource.com/c/protobuf/+/727960):
    all: add EDITION\_UNSTABLE support
    [CL/727940](https://go-review.googlesource.com/c/protobuf/+/727940):
    types: regenerate using latest protobuf v33.2 release
    [CL/727140](https://go-review.googlesource.com/c/protobuf/+/727140):
    internal/testprotos/lazy: convert .proto files to editions
    [CL/723440](https://go-review.googlesource.com/c/protobuf/+/723440):
    cmd/protoc-gen-go: add missing annotations for few generated protobuf
    symbols.
    [CL/720980](https://go-review.googlesource.com/c/protobuf/+/720980):
    internal/filedesc: remove duplicative Message.unmarshalOptions
    [CL/716360](https://go-review.googlesource.com/c/protobuf/+/716360):
    internal/encoding/tag: use proto3 defaults if proto3
    [CL/716520](https://go-review.googlesource.com/c/protobuf/+/716520):
    proto: un-flake TestHasExtensionNoAlloc
    [CL/713342](https://go-review.googlesource.com/c/protobuf/+/713342):
    compiler/protogen: properly filter option dependencies in go-protobuf
    plugin.
    [CL/711200](https://go-review.googlesource.com/c/protobuf/+/711200):
    proto: add test for oneofs containing messages with required fields
    [CL/710855](https://go-review.googlesource.com/c/protobuf/+/710855):
    proto: add explicit test for a non-nil but empty byte slice
    
    ###
    [`v1.36.10`](https://redirect.github.com/protocolbuffers/protobuf-go/releases/tag/v1.36.10)
    
    [Compare
    Source](https://redirect.github.com/protocolbuffers/protobuf-go/compare/v1.36.9...v1.36.10)
    
    **Full Changelog**:
    <https://github.com/protocolbuffers/protobuf-go/compare/v1.36.9...v1.36.10>
    
    Bug fixes:
    [CL/704415](https://go-review.googlesource.com/c/protobuf/+/704415):
    reflect/protodesc: edition-2024-specific properties should not be lost
    when converting FileDescriptorProto to protoreflect.FileDescriptor
    
    Maintenance:
    [CL/708555](https://go-review.googlesource.com/c/protobuf/+/708555):
    internal/race\_test: add missing impl.LazyEnabled() t.Skip
    [CL/703295](https://go-review.googlesource.com/c/protobuf/+/703295):
    proto: add more invalid group encoding test cases
    [CL/703276](https://go-review.googlesource.com/c/protobuf/+/703276):
    internal/impl: verify lazy unmarshal on Deterministic encoding
    [CL/703275](https://go-review.googlesource.com/c/protobuf/+/703275):
    internal/impl: stop using deprecated .Field in lazy\_test.go
    [CL/702795](https://go-review.googlesource.com/c/protobuf/+/702795):
    all: update to latest github.com/google/go-cmp
    
    ###
    [`v1.36.9`](https://redirect.github.com/protocolbuffers/protobuf-go/releases/tag/v1.36.9)
    
    [Compare
    Source](https://redirect.github.com/protocolbuffers/protobuf-go/compare/v1.36.8...v1.36.9)
    
    **Full Changelog**:
    <https://github.com/protocolbuffers/protobuf-go/compare/v1.36.8...v1.36.9>
    
    User-visible changes:
    [CL/699715](https://go-review.googlesource.com/c/protobuf/+/699715):
    cmd/protoc-gen-go: add test for "import option" directive
    [CL/699115](https://go-review.googlesource.com/c/protobuf/+/699115):
    internal/editionssupport: declare support for edition 2024
    [CL/697595](https://go-review.googlesource.com/c/protobuf/+/697595):
    editions: Fix spelling mistake in panic message
    
    </details>
    
    ---
    
    ### Configuration
    
    📅 **Schedule**: Branch creation - "on tuesday" (UTC), Automerge - At any
    time (no schedule defined).
    
    🚦 **Automerge**: Disabled by config. Please merge this manually once you
    are satisfied.
    
    ♻ **Rebasing**: Whenever PR becomes conflicted, or you tick the
    rebase/retry checkbox.
    
    🔕 **Ignore**: Close this PR and you won't be reminded about these
    updates again.
    
    ---
    
    - [ ] <!-- rebase-check -->If you want to rebase/retry this PR, check
    this box
    
    ---
    
    This PR was generated by [Mend Renovate](https://mend.io/renovate/).
    View the [repository job
    log](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0Mi42OS4xIiwidXBkYXRlZEluVmVyIjoiNDIuNjkuMSIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
