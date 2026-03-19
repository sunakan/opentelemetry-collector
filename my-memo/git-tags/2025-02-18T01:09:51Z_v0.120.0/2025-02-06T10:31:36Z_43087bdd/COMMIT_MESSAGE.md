commit 43087bdd92ed0a7d0ebc58c1e6652248d58e06b9
Author: Moritz Wiesinger <moritz.wiesinger@dynatrace.com>
Date:   Thu Feb 6 11:31:36 2025 +0100

    [chore] add githubgen to enhance codeowners and issue templates (#11756)
    
    ### This PR
    - adds the githubgen tool as a dependency in internal/tools
    - uses githubgen to generate codeowners and issue template files
    - updates lots of metadata files by
    - taking the existing codeowners file and feeding the info from there
    back into the component metadata.yaml files or creating new
    metadata.yaml files where none existed yet
    - adds distributions.yaml as a basis the mostly already existing
    `distributions:` keys in metadata.yaml files (needed for githubgen to
    work correctly)
    - adds relevant make commands to make the githubgen tool usage mostly
    transparent to users
    
    This change is a prerequisite to be able to ping codeowners reliably
    with automated tooling as a next step.
    
    
    Part of #11562
    
    ---------
    
    Signed-off-by: Moritz Wiesinger <moritz.wiesinger@dynatrace.com>
