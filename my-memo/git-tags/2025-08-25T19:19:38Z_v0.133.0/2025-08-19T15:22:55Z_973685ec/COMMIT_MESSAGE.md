commit 973685ec279df6c9061e0a3c5b7c63d68d427747
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Tue Aug 19 11:22:55 2025 -0400

    [chore][confighttp] Move client and server code into separate files (#13638)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    The `confighttp.go` and `confighttp_test.go` files are pretty large and
    navigating them isn't always the best experience. I think splitting the
    client and server functionality makes sense since they don't share much
    code.
