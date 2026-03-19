commit 5272797f7b90053f621774a8da27afd59f963c7e
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Thu Dec 5 12:30:34 2024 +0100

    Generate `replaces` automatically in builder-integration-test (#11793)
    
    #### Description
    
    This PR removes the manually maintained `replace` statements in
    `cmd/builder/test/core.builder.yaml` and generates them automatically in
    `cmd/builder/test/test.sh`. This ensures that the builder integration
    test properly uses the local version of core collector modules, even if
    a `replace` statement is forgotten. This is especially important in
    release PRs where dependencies have not-yet-valid version numbers (see
    tracking issue for context).
    
    #### Note
    
    I believe a better implementation of this long-term may be to commit a
    `go.work` file to the repository as the single source of truth for
    `replace`s, and let the `go` commands run by `ocb` take it into account
    automatically. (This would also avoid needing to maintain the `replace`s
    in every `go.mod`, which can be annoying when `make crosslink` is not
    sufficient.) But as there were [objections the last time this was
    discussed](https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/21972#issuecomment-1549173972),
    I decided to leave this as a future discussion.
    
    #### Link to tracking issue
    Fixes #11607
    
    #### Testing
    We can simulate a Release PR by setting the `exporter` import in
    `debugexporter` to an invalid version like `0.999.0`. With the new
    script, this causes no problems, showing that the build uses the local
    version without fetching from the proxy. Filtering the `exporter` module
    from the replace statements by adding this to the script:
    ```bash
    core_mods=$(echo "$core_mods" | grep -v "/exporter$")
    ```
    makes `ocb` output the expected `unknown revision` error.
