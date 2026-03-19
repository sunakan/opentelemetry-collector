commit 22005909e79119c80726ca4bb3881ba58ed04009
Author: Jeff Cheng <jcheng@signalfx.com>
Date:   Tue Jun 30 10:47:37 2020 -0400

    Update check-links to ignore 429 errors (#1229)
    
    Add custom `markdown-link-check` to ignore 429 responses.
    Diff with https://github.com/tcort/markdown-link-check/blob/v3.8.1/markdown-link-check:
    ```
    < const markdownLinkCheck = require('markdown-link-check');
    ---
    > const markdownLinkCheck = require('./');
    134,138d133
    <             // workaround to ignore 429 responses (too many requests)
    <             if (result.statusCode === 429) {
    <                 result.status = 'ignored'
    <             }
    <
    ```
    
    **Link to tracking Issue:**
    
    **Testing:**
    Tested locally with `circleci` command line tool.
    
    **Documentation:**
    Updated .circleci/check-links/README.md.
