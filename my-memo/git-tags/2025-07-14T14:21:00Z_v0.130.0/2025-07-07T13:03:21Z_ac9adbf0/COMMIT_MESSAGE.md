commit ac9adbf016bf84cac51bdf8663da104b8716402f
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Mon Jul 7 13:03:21 2025 +0000

    [confighttp] Use `configoptional.Optional` for optional fields (#13109)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    Makes the following changes to confighttp:
    1. Uses `configoptional.Optional` in `confighttp` for all optional
    sections
    
    This means a bunch of breaking changes. I think it is unfeasible to do
    this in two steps and I hereby promise that I will fix contrib tests and
    help anybody affected by this
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #9478
