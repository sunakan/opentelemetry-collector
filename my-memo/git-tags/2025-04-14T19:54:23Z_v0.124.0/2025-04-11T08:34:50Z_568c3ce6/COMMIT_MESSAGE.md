commit 568c3ce6fd43e33707e7ca22ef46efe293e458c4
Author: Adriel Perkins <adriel@adrielperkins.com>
Date:   Fri Apr 11 04:34:50 2025 -0400

    [chore] enable github action pin digest helper in renovatebot (#12799)
    
    #### Description
    
    As part of the security slam, we've been working to pin digests in
    GitHub actions. There's some tools that can run through and pin
    everything, but without the notes and comments of every versioned, it
    can be difficult to understand what is actually being pinned. Thus, I'm
    opting to add the [renovate
    helper](https://docs.renovatebot.com/modules/manager/github-actions/#digest-pinning-and-updating)
    for this in GitHub actions which should automatically manage version
    pinning.
    
    #### Link to tracking issue
    Related to
    [#86](https://github.com/open-telemetry/sig-security/issues/87#issuecomment-2776660785)
    
    #### Testing
    
    Ran `npx --yes --package renovate -- renovate-config-validator
    renovate.json` after updating the config.
