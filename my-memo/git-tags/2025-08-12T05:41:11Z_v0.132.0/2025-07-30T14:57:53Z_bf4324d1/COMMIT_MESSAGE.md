commit bf4324d1fa48ab358708c8d23ebac9920387a730
Author: Matthieu MOREL <matthieu.morel35@gmail.com>
Date:   Wed Jul 30 16:57:53 2025 +0200

    [chore]: enable extra-rules from gofumpt and paramTypeCombine from go-critic (#13479)
    
    #### Description
    
    Check if code and import statements are formatted, with additional
    rules.
    
    * https://golangci-lint.run/usage/formatters/#gofumpt
    * https://go-critic.com/overview.html#paramtypecombine
    
    This is the application of golangci-lint fmt ./... , the Makefile has
    been update to include this behavior
    
    Signed-off-by: Matthieu MOREL <matthieu.morel35@gmail.com>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
