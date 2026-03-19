commit 8abfa023a549c2c3894bb39f1db37a530542c716
Author: John L. Peterson (Jack) <john.peterson@datadoghq.com>
Date:   Fri Aug 9 13:16:09 2024 -0400

    Migrate ocb binary release to opentelemetry-collector-releases (#10710)
    
    After discussion with the collector SIG call this week, July
    31st, I have made small tweaks to the artifact release that will not
    require an "extra step" of pushing tags. If these changes are accepted,
    the distributions will be released under tag "vX.XXX.X" and the ocb
    binaries will be released under "cmd/builder/vX.XXX.X" but both under
    this repo, opentelemetry-collector-releases. The workflow
    `builder-release.yaml` in releases repo will push the additional tags
    necessary for the builder release.
    
    Refactoring the release process as mentioned in past issues/PRs. ocb
    binary is currently released in a separate release tag under this
    repository, which makes it harder to find and inconsistent with the rest
    of the binaries and images releasing in the
    opentelemetry-collector-releases repository.
    
    Releasing the ocb binaries in opentelemetry-collector-releases makes
    this process more standardized and also opens the opportunity to release
    more tools alongside ocb binary down the road, like corresponding docker
    images (as discussed in #5712).
    
    #### Link to tracking issue
    Fixes #10662
    Mentioned in [releases issue #
    295](https://github.com/open-telemetry/opentelemetry-collector-releases/issues/295)
    [Corresponding PR in
    opentelemetry-collector-releases](https://github.com/open-telemetry/opentelemetry-collector-releases/pull/608)
    
    #### Testing
    Sample binary release in [forked
    jackgopack4/opentelemetry-collector-releases
    repo](https://github.com/jackgopack4/opentelemetry-collector-releases/releases/tag/cmd%2Fbuilder%2Fv0.106.1)
    
    #### Documentation
    Updated corresponding documentation to reflect new release process
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
