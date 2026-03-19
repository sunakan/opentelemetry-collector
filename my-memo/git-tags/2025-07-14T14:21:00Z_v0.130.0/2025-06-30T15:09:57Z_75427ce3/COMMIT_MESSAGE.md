commit 75427ce3c5436cc4b113b17bf6102f3ca578d9ce
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Mon Jun 30 17:09:57 2025 +0200

    [chore] Fix sourcecode-release workflow permissions (#13301)
    
    #### Description
    
    During the v0.129.0 release process, the sourcecode-release.yaml
    workflow
    [failed](https://github.com/open-telemetry/opentelemetry-collector/actions/runs/15973270037/job/45049168039),
    during the step that [updates the "next release"
    milestone](https://github.com/open-telemetry/opentelemetry-collector/blob/8c7e0b7708eeb02f012282f74c6723a58f9cbf2a/.github/workflows/sourcecode-release.yaml#L56).
    I believe this was because of [this
    change](https://github.com/open-telemetry/opentelemetry-collector/pull/13240/files#diff-ac51d4c0a4ced767627f2ed87af1fe93f5eba40f8de1d0a4dd5b1b99914e1d88),
    which accidentally removed the workflow's permission to modify issue
    milestones.
    
    This PR adds back the appropriate permission explicitly.
    
    ([→ Doc page showing that "issues" is the appropriate scope for
    modifying
    milestones](https://docs.github.com/en/rest/issues/milestones?apiVersion=2022-11-28#update-a-milestone))
