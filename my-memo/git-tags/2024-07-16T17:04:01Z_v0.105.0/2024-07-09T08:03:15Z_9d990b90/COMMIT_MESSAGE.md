commit 9d990b901121788eba1a15e4bf2a667e53f61bfa
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Tue Jul 9 10:03:15 2024 +0200

    [chore][confmap] Add string representation to mocked env provider (#10559)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    Adds string representation to all inputs returned by mock env provider
    used in tests.
    
    The real `env` provider (and all other providers on this repository) do
    this by default since they use `NewRetrievedFromYAML`.
    
    Note that certain types are not really obtainable with the real `env`
    provider (e.g. `int32` or `float64`). I have kept them and added the
    string representation manually.
    
    #### Link to tracking issue
    
    Needed for #10554
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
