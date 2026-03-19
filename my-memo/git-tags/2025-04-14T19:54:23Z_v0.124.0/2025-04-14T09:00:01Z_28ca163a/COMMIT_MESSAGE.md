commit 28ca163a928be27f7363a1c19e4dfb1816b56824
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Mon Apr 14 11:00:01 2025 +0200

    [docs/component-stability.md] Add criteria for graduating between stability levels (#11864)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Code ownership and maintenance of components continues to be an issue,
    with varying levels of support across contrib. As we approach 1.0 and
    the ability to mark components as stable, we want to make sure that
    components that we deem as 'stable' have a healthy community around
    them. We have three datapoints that we can leverage here: how many
    codeowners a component has, how diverse these are in terms of employers
    and how actively the codeowners have been responding to issues/PRs in
    the recent past.
    
    We need criteria that
    1. Are reasonable predictors of the component health over the
    short/medium term
    2. Are not too onerous on the code owners
    
    Some notes:
    1. Some beta components do not meet the criteria listed on the PR. This
    will be the case even after the transition for some components. This PR
    makes no claim as to what should happen to these components stability
    (so, de facto, they will stay as is).
    2. The OTLP receiver and exporters do not meet this criteria today
    because they don't have listed code owners. We can solve this either by
    carving out an exception or by listing code owners.
    3. We need automation and templates to enforce this.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #11850
    
    ---------
    
    Co-authored-by: Christos Markou <chrismarkou92@gmail.com>
