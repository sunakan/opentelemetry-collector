commit 9bd581be6eba098c9c1bc6ac91bcb924dba2bc6a
Author: Daniel Jaglowski <jaglows3@gmail.com>
Date:   Tue Jun 18 10:14:29 2024 -0500

    Add goreleaser check and attempt update (#10428)
    
    https://github.com/open-telemetry/opentelemetry-collector/pull/10384
    updated `goreleaser` to a new major version and this appears to have
    [broken the
    config](https://github.com/open-telemetry/opentelemetry-collector/actions/runs/9565775767/job/26369463094).
    This problem only became apparent during the release process since the
    config is not used otherwise.
    
    This PR adds a github action to run `goreleaser check` on all PRs, since
    changes to the config may not be caught until release is attempted.
    
    I've also included what may be the only necessary change to the config,
    by [renaming `changelog.skip` to
    `changelog.disable`](https://github.com/goreleaser/goreleaser/commit/29f30b623ef8f0a19607afab22b3f3a2f9f68172).
    This passes `goreleaser check` when run locally.
    
    The `monorepo` section of the config fails locally, but the feature
    appears to require the Pro version so I'm unclear if it will pass with
    the OSS version.
