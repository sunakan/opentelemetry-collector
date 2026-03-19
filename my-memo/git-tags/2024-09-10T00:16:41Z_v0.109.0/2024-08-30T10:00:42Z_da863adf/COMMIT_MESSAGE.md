commit da863adf485d0602c6c378adc2721ae49799342b
Author: Matthieu MOREL <matthieu.morel35@gmail.com>
Date:   Fri Aug 30 12:00:42 2024 +0200

    [chore]: enable bool-compare rule from testifylint (#10993)
    
    #### Description
    
    Testifylint is a linter that provides best practices with the use of
    testify.
    
    This PR enables
    [bool-compare](https://github.com/Antonboom/testifylint?tab=readme-ov-file#bool-compare)
    rule from [testifylint](https://github.com/Antonboom/testifylint)
    
    It's linter provided by golangci-lint.
    
    Here all available rules are activated except those who require to be
    fixed. This PR only fixes bool-compare so the quantity of changes stays
    reasonnable for reviewers.
    
    Co-authored-by: Yang Song <songy23@users.noreply.github.com>
