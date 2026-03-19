commit 2c9608866044d4a0b49f04738d4bc197628ef5ad
Author: Curtis Robert <crobert@splunk.com>
Date:   Fri Jan 5 15:18:01 2024 -0800

    [chore][CI/CD] Add make gotidy check in build-and-test.yml (#9216)
    
    **Description:** <Describe what has changed.>
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    Every PR should be checked to make sure `make gotidy` can run
    successfully against its contents. I want to add this because as shown
    in #9212, I recently broke some dependencies on `main`.
    
    [Logic lifted from
    contrib.](https://github.com/open-telemetry/opentelemetry-collector-contrib/blob/0c27a3bccfd1b1f7418cc1ac05a535ce29a5a736/.github/workflows/build-and-test.yml#L198-L201)
