commit 115568a442d1144ac0d9f8fa029993aa68df2b3a
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Wed Nov 13 21:18:12 2024 +0100

    [chore] Use pseudo-versions to require `componenttest` (#11668)
    
    #### Description
    
    My previous PR (#11615) which made `component/componenttest` into its
    own module tagged it as `v0.113.0` in the requirements of other modules.
    This works locally because of the `replace` statements, but since the
    module was never _actually_ released as v0.113.0, this causes issues in
    contrib (cf. #11509 and #11511).
    
    This PR updates those requirements to use a pseudo-version pointing at a
    recent commit on main, which should be properly externally resolvable.
    
    #### Link to tracking issue
    None.
    
    #### Testing
    I removed the `replace` statements for `componenttest`, ran `make
    gotidy`, which allowed `make otelcorecol` to run successfully. Not sure
    if this is a thorough enough test however. Once this PR is merged, I
    will try `make update-otel [...]` on contrib with the appropriate commit
    ID to check that the issue is resolved.
