commit 414dd45cf83a80849339d80c9716c5a7e9f22602
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Mon Jun 26 14:50:50 2023 -0400

    Add zstd decompression support to HTTPServerSettings (#7927)
    
    This adds ability to decompress zstd-compressed HTTP requests to all
    receivers that use HTTPServerSettings.
    
    Also added missing error handling for the case when an unsupported
    compression type was used in the request. Now it correctly returns 400
    Bad Request. Also added a unit test to verify this case.
    
    Once this is merged I will submit a PR in contrib repo to add end-to-end
    tests that use zstd compression in the testbed.
