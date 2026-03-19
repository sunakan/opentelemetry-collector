commit f680426e9ae526920e647934477f57be18e6b9ea
Author: Paulo Dias <44772900+paulojmdias@users.noreply.github.com>
Date:   Tue Oct 7 16:57:56 2025 +0100

    [chore][ci] port check-codeowners workflow from contrib (#13908)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This PR ports the `check-codeowners` workflow from the
    `opentelemetry-collector-contrib` repository.
    
    On this side, the command referenced in the workflow is `make
    generate-codeowners` instead of `make gencodeowners` as is in the
    contrib version. In the `Makefile`, I added the `-skipgithub` to avoid
    giving an error like below when the members run it.
    
    ```sh
    2025/09/25 22:52:36 set the environment variable `GITHUB_TOKEN` to a PAT token to authenticate
    ```
    
    I ran `gengithub`, which also produced some changes in issue templates.
    
    Like the PR
    https://github.com/open-telemetry/opentelemetry-collector/pull/13898, I
    also removed the `make install-tools` from this workflow.
    
    The idea to port this workflow here came from the PR
    https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/42999
    discussion in Slack.
    
    ---------
    
    Signed-off-by: Paulo Dias <paulodias.gm@gmail.com>
