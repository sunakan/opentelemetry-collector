commit 58d6c0979ee9ec883e2474aa879e4790248a2f9e
Author: Yang Song <songy23@users.noreply.github.com>
Date:   Tue Aug 5 10:34:26 2025 -0400

    [chore] fix renovate (#13565)
    
    #### Description
    fix for once and for all, apologies for the back and force
    `ignoreVersions` is no longer present in latest renovate, they require
    to use `allowedVersions` with negated regex:
    https://docs.renovatebot.com/configuration-options/#ignore-versions-with-negated-regex-syntax
    
    #### Link to tracking issue
    Fixes
    http://github.com/open-telemetry/opentelemetry-collector/issues/13557
