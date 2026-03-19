commit 650a809e1a040f554f7ed5b60e0b6416b58ed4fb
Author: Marin Atanasov Nikolov <dnaeon@gmail.com>
Date:   Wed Oct 8 20:12:30 2025 +0300

    feat: migrate to tools directive (v2) (#13906)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This PR is a continuation of PR #13844 , which had to be reverted in
    #13899, because of an issue with the `apidiff` tool as described in
    #13897 .
    
    On top of the changes initially proposed in #13844, this PR also adds
    the [gomodTidy option to renovate
    postUpdateOptions](https://docs.renovatebot.com/configuration-options/),
    so that module dependencies are properly updated before new changes are
    proposed by `renovate`.
    
    The changes from this PR have been applied to my fork, so that I can
    confirm that all workflows are passing as expected and a couple of dummy
    PRs can be seen below.
    
    - https://github.com/dnaeon/opentelemetry-collector/pull/4 (a dummy
    change to ensure workflows are running fine)
    - https://github.com/dnaeon/opentelemetry-collector/pull/5 (a PR made by
    `renovate` which takes care of updating a Go tool)
    
    cc: @mx-psi , @dmathieu , @codeboten
    
    P.S.: Sorry for the troubles caused by the initial PR!
    
    #### Link to tracking issue
    Fixes #13897
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    Local testing as well as testing with PRs against my fork (see links in
    the description for sample PRs and workflow runs)
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    N/A
    <!--Please delete paragraphs that you did not use before submitting.-->
