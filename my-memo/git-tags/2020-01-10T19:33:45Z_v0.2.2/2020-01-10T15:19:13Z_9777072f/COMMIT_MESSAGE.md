commit 9777072f35b34c734c9132768c3ce2cc0d15302a
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Fri Jan 10 10:19:13 2020 -0500

    Fix incorrect dependency version in testbed/go.mod (#495)
    
    The dependency was referring to non-existing version. This was
    building fine in this repo because the dependency is replaced
    but was causing problem in other repos which consume the testbed.
