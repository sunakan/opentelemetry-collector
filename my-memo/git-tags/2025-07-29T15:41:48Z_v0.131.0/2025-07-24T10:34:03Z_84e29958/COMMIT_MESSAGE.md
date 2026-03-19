commit 84e29958f100213d127c49e747634771738ce039
Author: Matthieu MOREL <matthieu.morel35@gmail.com>
Date:   Thu Jul 24 12:34:03 2025 +0200

    [chore]: enable-all rules from go-critic (#13433)
    
    #### Description
    
    Enables all rules from
    [go-critic](https://golangci-lint.run/usage/linters/#gocritic) by
    default and disable the one that needs to be fixed
    
    * https://go-critic.com/overview.html#appendcombine
    * https://go-critic.com/overview.html#emptystringtest
    * https://go-critic.com/overview.html#evalorder
    * https://go-critic.com/overview.html#httpnobody
    * https://go-critic.com/overview.html#nestingreduce
    * https://go-critic.com/overview.html#regexpsimplify
    * https://go-critic.com/overview.html#sloppyreassign
    * https://go-critic.com/overview.html#sprintfquotedstring
    * https://go-critic.com/overview.html#typeassertchain
    * https://go-critic.com/overview.html#typeunparen
    
    ---------
    
    Signed-off-by: Matthieu MOREL <matthieu.morel35@gmail.com>
