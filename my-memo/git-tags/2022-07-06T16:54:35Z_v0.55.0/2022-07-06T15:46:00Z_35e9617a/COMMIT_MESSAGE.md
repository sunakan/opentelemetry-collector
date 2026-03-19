commit 35e9617a036195b4fcfc1d68994999791d104399
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Wed Jul 6 11:46:00 2022 -0400

    Prepare v0.55.0 release (#5638)
    
    Steps performed:
    
     * Update CHANGELOG.md file and rename the Unreleased section to the new release name. Add a new unreleased section at top. Use commit history feature to get the list of commits since the last release to help understand what should be in the release notes, e.g.: https://github.com/open-telemetry/opentelemetry-collector/compare/v0.44.0...main.
    
        * Use multimod to update the version of the collector package
          * Update [versions.yaml](https://github.com/open-telemetry/opentelemetry-collector/blob/main/versions.yaml) and commit it locally
          * Run `make multimod-prerelease` (it might fail if you didn't commit the change above)
    
        * Update the collector version in the collector builder to the new release in `./cmd/builder/internal/builder/config.go`.
    
        * Update the collector version in the manifest used by `make run` to the new release in `./cmd/otelcorecol/builder-config.yaml` and run `make genotelcorecol`.
    
        * Update the collector version in the `examples/k8s/otel-config.yaml`
