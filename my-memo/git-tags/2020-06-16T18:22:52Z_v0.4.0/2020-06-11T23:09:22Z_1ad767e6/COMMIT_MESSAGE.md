commit 1ad767e62f3dff6f62f32c7360b6fefe0fbf32ff
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu Jun 11 19:09:22 2020 -0400

    Update OTLP to latest master commit (#1111)
    
    - Rename internal metric types to match OTLP metric types.
    - Fix all tests and usages of metric types in the codebase.
    - Remove references to labelkeys from MetricDescriptor since
      it no longer exists in OTLP.
    - DID NOT use the new Temporarily concept, waiting until the
      proto is settled down.
