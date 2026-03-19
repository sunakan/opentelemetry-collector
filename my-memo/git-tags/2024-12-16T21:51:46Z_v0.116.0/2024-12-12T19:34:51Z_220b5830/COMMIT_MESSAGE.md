commit 220b58309f3eb1d7c5e70d717d95c47c7bcc81a5
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Thu Dec 12 20:34:51 2024 +0100

    [chore] Fix "Prepare Release" action (#11849)
    
    #### Description
    
    The "Prepare Release" action failed during the latest release process,
    as the OpenTelemetry Bot, which opens the release PR, does not have the
    permissions to add the new `release:merge-freeze` label. This PR fixes
    this by creating the PR with the bot token, then adding the label
    separately using the regular CI token.
    
    Since we already use default CI tokens on -contrib to add labels, I
    assume they have the permission to do that on this repo as well. I
    deemed this simpler than the alternative solutions mentioned in the
    tracking issue, though I'm not certain it will work.
    
    Note that the tracking issue is a release blocker.
    
    #### Link to tracking issue
    Fixes #11808
    
    #### Testing
    I'm not sure how I could test this without getting it merged first
    unfortunately. Once merged, we could try running the action, then
    closing the resulting PR and issue.
