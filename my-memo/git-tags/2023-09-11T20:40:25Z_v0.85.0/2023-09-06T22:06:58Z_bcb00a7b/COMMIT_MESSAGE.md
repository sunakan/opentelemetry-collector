commit bcb00a7b27fa66c7e0069b8d679f0581b4e9dd56
Author: bryan-aguilar <46550959+bryan-aguilar@users.noreply.github.com>
Date:   Wed Sep 6 15:06:58 2023 -0700

    [chore] Update go version used in workflows to ~1.28.8 (#8373)
    
    **Description:** This is a defensive PR to update the minimum go version
    used in the collectors github actions workflows. The latest go patch
    version contains fixes for a CVE that could affect a go build tool
    chain.
