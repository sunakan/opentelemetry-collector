commit 7d3e03e500b039f5d4e314d3a661ef74cf5e73c3
Author: Matthew Sainsbury <matthew@sainsbury.io>
Date:   Fri Mar 7 11:42:15 2025 -0800

    [chore] replace deprecated tenv with usetesting (#12576)
    
    #### Description
    There are a bunch of warnings in the lint output about tenv being
    deprecated, and moving to usetesting. Reference:
    https://golangci-lint.run/usage/linters/#tenv
    
    #### Link to tracking issue
    none
    
    #### Testing
    Ran `make golint` and `make all`
    <!--Describe the documentation added.-->
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
