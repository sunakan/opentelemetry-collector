commit 064df806f1caea2d95aaa407ff792e806f60896b
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Tue Aug 29 16:32:49 2023 -0700

    [chore] Fix release issue creation script (#8307)
    
    Make the filtering for existing issues strict to avoid picking unrelated
    issues. This happened in during 0.84.0 release
    ```
    + RELEASE_VERSION=v/v0.84.0
    + '[' '' == '' ']'
    + RELEASE_VERSION=v0.84.0
    + '[' 0.84.0 == '' ']'
    ++ gh issue list --search 'Release v0.84.0' --json url --jq '.[].url' --repo open-telemetry/opentelemetry-collector
    + EXISTING_ISSUE=https://github.com/open-telemetry/opentelemetry-collector/issues/8063
    + '[' https://github.com/open-telemetry/opentelemetry-collector/issues/8063 '!=' '' ']'
    + echo 'Issue already exists: https://github.com/open-telemetry/opentelemetry-collector/issues/8063'
    + exit 0
    Issue already exists: https://github.com/open-telemetry/opentelemetry-collector/issues/8063
    ```
