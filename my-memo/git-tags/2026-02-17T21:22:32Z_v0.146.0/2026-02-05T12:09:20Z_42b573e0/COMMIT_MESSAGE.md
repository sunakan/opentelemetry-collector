commit 42b573e035464441df974e299fe63ca6a2787d77
Author: syed owais <syedowais312sf@gmail.com>
Date:   Thu Feb 5 17:39:20 2026 +0530

    cmd/mdatagen: introduce additional metadata for deprecated metrics (#14408)
    
    This PR fixes how `mdatagen` handles deprecated metric fields in
    `metadata.yaml`.
    
    The metadata loader now aligns correctly with the schema and test
    expectations,
    ensuring deprecated fields are only set when explicitly defined.
    
    ## What was changed?
    
    - Updated metadata loading logic to correctly handle deprecated metric
    fields
    - Ensured deprecated fields are only set when explicitly specified
    - Aligned generated metadata with existing test expectations
    - All existing and sample `mdatagen` tests pass after this change
    
    ---
    
    ## Testing
    
    - `go test ./cmd/mdatagen/...`
    - Verified all sample metadata generators and internal tests pass
    - All `mdatagen` tests pass.
    
    ---
    
    *Related:*
    https://github.com/open-telemetry/opentelemetry-collector/issues/14113
    
    N/A (internal correctness and test alignment fix)
    
    ---------
    
    Co-authored-by: Damien Mathieu <42@dmathieu.com>
