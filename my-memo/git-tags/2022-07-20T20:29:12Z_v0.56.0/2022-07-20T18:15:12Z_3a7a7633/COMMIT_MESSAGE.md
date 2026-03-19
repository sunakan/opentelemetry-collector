commit 3a7a76335c306aa01e11356002cc5a04d77256f1
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Wed Jul 20 14:15:12 2022 -0400

    Add guidelines about commit messages and merging/squashing commits (#5691)
    
    Our commit messages often are quite lacking. A typical approach is writing single line commit
    messages and pushing multiple such commits to a PR. When commits are squashed the commit
    messages are concatenated, and we end up with useless commit messages.
    
    Here is an example of a commit message body (I am omitting the first line and the commit hash
    to avoid blaming anyone in particular - we are all guilty):
    
    ```
        * add docstring
    
        * fix typo
    
        * fix impi
    
        * apply review feedback
    ```
    
    This is a useless commit message, in fact, it is worse than an empty one.
    
    I tried to keep the added paragraph in the CONTRIBUTING.md short. If you think more details and
    convincing is necessary I can make it more elaborate. Note that the text I added doesn't just
    call for good commit messages but has some hints about the commit and PR creation, squashing and
    merging processes that make it easier to end up with better commit messages.
