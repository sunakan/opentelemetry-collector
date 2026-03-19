commit dd103f12fee248157435664d034eddbe88bf74a1
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Tue Jun 18 11:05:21 2024 -0700

    [chore] revert tag trigger change (#10434)
    
    This causes the goreleaser and gh release steps to conflict as the
    goreleaser will create a release for the builder tag, and gh release
    will try to create the same.
    
    See
    https://github.com/open-telemetry/opentelemetry-collector/actions/runs/9568657405/job/26379389384
    for more details
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
