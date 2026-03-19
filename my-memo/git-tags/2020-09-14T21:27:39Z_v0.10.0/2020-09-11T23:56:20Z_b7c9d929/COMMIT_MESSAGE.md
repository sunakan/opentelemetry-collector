commit b7c9d92903aff8dee9e7482721084e18b9ab011d
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Fri Sep 11 19:56:20 2020 -0400

    Fix `make test` (#1768)
    
    empty.go file is needed to please `go list` which otherwise complains that tools.go is
    only file in the internal package and that build constraints exclude it.
    
    This results in empty list of tests when using `make test` command which then
    silently skips all tests.
    
    This fixes the problem and `make test` works properly.
