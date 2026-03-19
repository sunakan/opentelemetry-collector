commit 157a5aea3fa6c007ec50a28d579805441c0201a1
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Jan 6 17:43:18 2026 +0000

    chore(deps): update module github.com/google/go-tpm-tools to v0.4.7 (#14377)
    
    This PR contains the following updates:
    
    | Package | Change |
    [Age](https://docs.renovatebot.com/merge-confidence/) |
    [Confidence](https://docs.renovatebot.com/merge-confidence/) |
    |---|---|---|---|
    |
    [github.com/google/go-tpm-tools](https://redirect.github.com/google/go-tpm-tools)
    | `v0.4.4` → `v0.4.7` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2fgoogle%2fgo-tpm-tools/v0.4.7?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2fgoogle%2fgo-tpm-tools/v0.4.4/v0.4.7?slim=true)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>google/go-tpm-tools (github.com/google/go-tpm-tools)</summary>
    
    ###
    [`v0.4.7`](https://redirect.github.com/google/go-tpm-tools/releases/tag/v0.4.7)
    
    [Compare
    Source](https://redirect.github.com/google/go-tpm-tools/compare/v0.4.6...v0.4.7)
    
    #### What's Changed
    
    - Revert "Add HashNonce flag to Attest and VerifyAttestation
    ([#&#8203;585](https://redirect.github.com/google/go-tpm-tools/issues/585))"
    by [@&#8203;alexmwu](https://redirect.github.com/alexmwu) in
    [#&#8203;601](https://redirect.github.com/google/go-tpm-tools/pull/601)
    - Add a GCE SP800-155 eventlog and a cGKE eventlog by
    [@&#8203;alexmwu](https://redirect.github.com/alexmwu) in
    [#&#8203;599](https://redirect.github.com/google/go-tpm-tools/pull/599)
    - fix: Replace metadata server error with warning by
    [@&#8203;onlyshawn](https://redirect.github.com/onlyshawn) in
    [#&#8203;603](https://redirect.github.com/google/go-tpm-tools/pull/603)
    - Add ITA support to CS by
    [@&#8203;alexmwu](https://redirect.github.com/alexmwu) in
    [#&#8203;605](https://redirect.github.com/google/go-tpm-tools/pull/605)
    - Remove cmd dependency on containerd by
    [@&#8203;alexmwu](https://redirect.github.com/alexmwu) in
    [#&#8203;606](https://redirect.github.com/google/go-tpm-tools/pull/606)
    - Update end-to-end testing to use fake verifier by
    [@&#8203;mayafleischer](https://redirect.github.com/mayafleischer) in
    [#&#8203;607](https://redirect.github.com/google/go-tpm-tools/pull/607)
    - Add SVSM e-vTPM support to go-tpm-tools by
    [@&#8203;jxu023](https://redirect.github.com/jxu023) in
    [#&#8203;600](https://redirect.github.com/google/go-tpm-tools/pull/600)
    
    #### New Contributors
    
    - [@&#8203;onlyshawn](https://redirect.github.com/onlyshawn) made their
    first contribution in
    [#&#8203;603](https://redirect.github.com/google/go-tpm-tools/pull/603)
    - [@&#8203;mayafleischer](https://redirect.github.com/mayafleischer)
    made their first contribution in
    [#&#8203;607](https://redirect.github.com/google/go-tpm-tools/pull/607)
    - [@&#8203;jxu023](https://redirect.github.com/jxu023) made their first
    contribution in
    [#&#8203;600](https://redirect.github.com/google/go-tpm-tools/pull/600)
    
    **Full Changelog**:
    <https://github.com/google/go-tpm-tools/compare/v0.4.6...v0.4.7>
    
    ###
    [`v0.4.6`](https://redirect.github.com/google/go-tpm-tools/releases/tag/v0.4.6)
    
    [Compare
    Source](https://redirect.github.com/google/go-tpm-tools/compare/v0.4.5...v0.4.6)
    
    #### Breaking Change:
    
    -
    [#&#8203;596](https://redirect.github.com/google/go-tpm-tools/issues/596)
    cel.AppendEventPCR and cel.AppendEvent stop taking in \[]crypto.Hash,
    instead they will get all available PCR banks from the TPM capability.
    -
    [#&#8203;585](https://redirect.github.com/google/go-tpm-tools/issues/585)
    this may be a breaking change to users that don't populate AKPub within
    the attestation proto. This was never optional, and it was always
    populated by the go-tpm-tools client code.
    
    #### What's Changed
    
    - Remove VerifyAttestation dependency on SNP/TDX by
    [@&#8203;alexmwu](https://redirect.github.com/alexmwu) in
    [#&#8203;523](https://redirect.github.com/google/go-tpm-tools/pull/523)
    - Update the LICENSE to accurately describe the simulator by
    [@&#8203;chrisfenner](https://redirect.github.com/chrisfenner) in
    [#&#8203;537](https://redirect.github.com/google/go-tpm-tools/pull/537)
    - Update the comment in simulator.go by
    [@&#8203;jkl73](https://redirect.github.com/jkl73) in
    [#&#8203;538](https://redirect.github.com/google/go-tpm-tools/pull/538)
    - \[launcher] Clean up cloudbuild config by
    [@&#8203;jkl73](https://redirect.github.com/jkl73) in
    [#&#8203;539](https://redirect.github.com/google/go-tpm-tools/pull/539)
    - Add pk and kek to the SecureBootState proto message and populate them.
    by [@&#8203;eytankidron](https://redirect.github.com/eytankidron) in
    [#&#8203;534](https://redirect.github.com/google/go-tpm-tools/pull/534)
    - Fix a grub eventlog parsing issue with null terminator by
    [@&#8203;jkl73](https://redirect.github.com/jkl73) in
    [#&#8203;540](https://redirect.github.com/google/go-tpm-tools/pull/540)
    - merge tdx\_rtmr to main by
    [@&#8203;jkl73](https://redirect.github.com/jkl73) in
    [#&#8203;543](https://redirect.github.com/google/go-tpm-tools/pull/543)
    - Update releaser actions. by
    [@&#8203;deeglaze](https://redirect.github.com/deeglaze) in
    [#&#8203;546](https://redirect.github.com/google/go-tpm-tools/pull/546)
    - Update releaser.yaml to allow manual triggers by
    [@&#8203;alexmwu](https://redirect.github.com/alexmwu) in
    [#&#8203;547](https://redirect.github.com/google/go-tpm-tools/pull/547)
    - Update releaser.yaml to allow for specifying ref by
    [@&#8203;alexmwu](https://redirect.github.com/alexmwu) in
    [#&#8203;548](https://redirect.github.com/google/go-tpm-tools/pull/548)
    - Support manual triggers of goreleaser by
    [@&#8203;alexmwu](https://redirect.github.com/alexmwu) in
    [#&#8203;550](https://redirect.github.com/google/go-tpm-tools/pull/550)
    - Allow releaser workflow to modify Releases by
    [@&#8203;alexmwu](https://redirect.github.com/alexmwu) in
    [#&#8203;551](https://redirect.github.com/google/go-tpm-tools/pull/551)
    - Update go-sev-guest to v0.13.0 by
    [@&#8203;deeglaze](https://redirect.github.com/deeglaze) in
    [#&#8203;552](https://redirect.github.com/google/go-tpm-tools/pull/552)
    - Add ITA Verifier Client by
    [@&#8203;jessieqliu](https://redirect.github.com/jessieqliu) in
    [#&#8203;530](https://redirect.github.com/google/go-tpm-tools/pull/530)
    - Add ITA Attest to teeserver by
    [@&#8203;jessieqliu](https://redirect.github.com/jessieqliu) in
    [#&#8203;532](https://redirect.github.com/google/go-tpm-tools/pull/532)
    - Add privileged cs experiment flag by
    [@&#8203;JoshuaKrstic](https://redirect.github.com/JoshuaKrstic) in
    [#&#8203;558](https://redirect.github.com/google/go-tpm-tools/pull/558)
    - \[launcher] Add privileged launch policy options by
    [@&#8203;alexmwu](https://redirect.github.com/alexmwu) in
    [#&#8203;526](https://redirect.github.com/google/go-tpm-tools/pull/526)
    - Add event parsing logic for GPU device specific event
    ([#&#8203;561](https://redirect.github.com/google/go-tpm-tools/issues/561))
    by [@&#8203;meetrajvala](https://redirect.github.com/meetrajvala) in
    [#&#8203;562](https://redirect.github.com/google/go-tpm-tools/pull/562)
    - Clean up tmpfs and privileged experiments by
    [@&#8203;alexmwu](https://redirect.github.com/alexmwu) in
    [#&#8203;563](https://redirect.github.com/google/go-tpm-tools/pull/563)
    - Add cloudbuild tests for NPD health monitoring by
    [@&#8203;jessieqliu](https://redirect.github.com/jessieqliu) in
    [#&#8203;508](https://redirect.github.com/google/go-tpm-tools/pull/508)
    - Add back support for SNP and TDX attestation only for the gotpm CLI by
    [@&#8203;alexmwu](https://redirect.github.com/alexmwu) in
    [#&#8203;555](https://redirect.github.com/google/go-tpm-tools/pull/555)
    - \[launcher] Disable konlet in CS debug image by
    [@&#8203;jkl73](https://redirect.github.com/jkl73) in
    [#&#8203;570](https://redirect.github.com/google/go-tpm-tools/pull/570)
    - \[launcher] Update cs host directory permission by
    [@&#8203;jkl73](https://redirect.github.com/jkl73) in
    [#&#8203;571](https://redirect.github.com/google/go-tpm-tools/pull/571)
    - Add option to skip Calling EFI Application check by
    [@&#8203;alexmwu](https://redirect.github.com/alexmwu) in
    [#&#8203;573](https://redirect.github.com/google/go-tpm-tools/pull/573)
    - Add alias to proto buffer and remove extra imports by
    [@&#8203;yawangwang](https://redirect.github.com/yawangwang) in
    [#&#8203;576](https://redirect.github.com/google/go-tpm-tools/pull/576)
    - Update releaser config so it won't run on a PR by
    [@&#8203;jkl73](https://redirect.github.com/jkl73) in
    [#&#8203;579](https://redirect.github.com/google/go-tpm-tools/pull/579)
    - \[launcher] del launcher unit test TestWithAgent by
    [@&#8203;jkl73](https://redirect.github.com/jkl73) in
    [#&#8203;583](https://redirect.github.com/google/go-tpm-tools/pull/583)
    - Fix comment in TEE server by
    [@&#8203;JoshuaKrstic](https://redirect.github.com/JoshuaKrstic) in
    [#&#8203;584](https://redirect.github.com/google/go-tpm-tools/pull/584)
    - TEE Server Error code Translation by
    [@&#8203;Sibcgh](https://redirect.github.com/Sibcgh) in
    [#&#8203;587](https://redirect.github.com/google/go-tpm-tools/pull/587)
    - Add testutils package to make select test helpers publicly available
    by [@&#8203;jessieqliu](https://redirect.github.com/jessieqliu) in
    [#&#8203;589](https://redirect.github.com/google/go-tpm-tools/pull/589)
    - Add VerifyCS experiment flag by
    [@&#8203;jessieqliu](https://redirect.github.com/jessieqliu) in
    [#&#8203;588](https://redirect.github.com/google/go-tpm-tools/pull/588)
    - Attest now will pass in a default audience instead of passing an error
    by [@&#8203;Sibcgh](https://redirect.github.com/Sibcgh) in
    [#&#8203;580](https://redirect.github.com/google/go-tpm-tools/pull/580)
    - Remove duplicated code in rest verifier by
    [@&#8203;jkl73](https://redirect.github.com/jkl73) in
    [#&#8203;590](https://redirect.github.com/google/go-tpm-tools/pull/590)
    - Add VerifyConfidentialSpace to verifier.Client by
    [@&#8203;jessieqliu](https://redirect.github.com/jessieqliu) in
    [#&#8203;593](https://redirect.github.com/google/go-tpm-tools/pull/593)
    - cel.AppendEventPCR extends to all PCR banks by
    [@&#8203;jkl73](https://redirect.github.com/jkl73) in
    [#&#8203;596](https://redirect.github.com/google/go-tpm-tools/pull/596)
    - Remove Attested COS specific CEL parsing logic by
    [@&#8203;meetrajvala](https://redirect.github.com/meetrajvala) in
    [#&#8203;597](https://redirect.github.com/google/go-tpm-tools/pull/597)
    - Add HashNonce flag to Attest and VerifyAttestation by
    [@&#8203;alexmwu](https://redirect.github.com/alexmwu) in
    [#&#8203;585](https://redirect.github.com/google/go-tpm-tools/pull/585)
    
    #### New Contributors
    
    - [@&#8203;eytankidron](https://redirect.github.com/eytankidron) made
    their first contribution in
    [#&#8203;534](https://redirect.github.com/google/go-tpm-tools/pull/534)
    - [@&#8203;Sibcgh](https://redirect.github.com/Sibcgh) made their first
    contribution in
    [#&#8203;587](https://redirect.github.com/google/go-tpm-tools/pull/587)
    
    **Full Changelog**:
    <https://github.com/google/go-tpm-tools/compare/v0.4.5...v0.4.6>
    
    ###
    [`v0.4.5`](https://redirect.github.com/google/go-tpm-tools/releases/tag/v0.4.5)
    
    [Compare
    Source](https://redirect.github.com/google/go-tpm-tools/compare/v0.4.4...v0.4.5)
    
    ### Breaking Changes
    
    Populate the SNP/TDX Machine State field with the verified SNP/TDX
    attestation data + use a stable COS image version
    [#&#8203;463](https://redirect.github.com/google/go-tpm-tools/issues/463)
    
    - Removes `verifyGceTechnology` export
    Support health monitoring mode for NPD
    [#&#8203;479](https://redirect.github.com/google/go-tpm-tools/issues/479)
    - Changes signature of `spec.GetLaunchPolicy`
    
    ### New Features
    
    Add event-log flag to cmd package
    [#&#8203;423](https://redirect.github.com/google/go-tpm-tools/issues/423)
    add custom nonce flag to cmd package token subcommand
    [#&#8203;451](https://redirect.github.com/google/go-tpm-tools/issues/451)
    
    ### Bug Fixes
    
    Fix bug dropping CEL in launcher attestations
    [#&#8203;438](https://redirect.github.com/google/go-tpm-tools/issues/438)
    fix invalid check and restore workaround from
    [#&#8203;72](https://redirect.github.com/google/go-tpm-tools/issues/72)
    [#&#8203;435](https://redirect.github.com/google/go-tpm-tools/issues/435)
    Error message should return length of digest
    [#&#8203;436](https://redirect.github.com/google/go-tpm-tools/issues/436)
    \[launcher] Fix a concurrent TPM access issue
    [#&#8203;434](https://redirect.github.com/google/go-tpm-tools/issues/434)
    Fix releaser.yaml and ci.yml file on macos
    [#&#8203;444](https://redirect.github.com/google/go-tpm-tools/issues/444)
    Refresh SA auth token in signaturediscovery client before fetching
    container image signatures
    [#&#8203;449](https://redirect.github.com/google/go-tpm-tools/issues/449)
    Fix an uint conversion
    [#&#8203;452](https://redirect.github.com/google/go-tpm-tools/issues/452)
    \[launcher] Try to fix cloudbuild for launcher
    [#&#8203;458](https://redirect.github.com/google/go-tpm-tools/issues/458)
    Release lock if generating attestation returns error
    [#&#8203;475](https://redirect.github.com/google/go-tpm-tools/issues/475)
    Add mutex to failing client to prevent concurrent writes
    [#&#8203;494](https://redirect.github.com/google/go-tpm-tools/issues/494)
    
    ### Other Changes
    
    Add PKI and LIMITED\_AWS token types for VerifyAttestation.
    [#&#8203;430](https://redirect.github.com/google/go-tpm-tools/issues/430)
    Move verifier package to its own submodule
    [#&#8203;447](https://redirect.github.com/google/go-tpm-tools/issues/447)
    Delte files used for AUR packaging
    [#&#8203;457](https://redirect.github.com/google/go-tpm-tools/issues/457)
    Add version information and fix cloudbuild
    [#&#8203;455](https://redirect.github.com/google/go-tpm-tools/issues/455)
    Update go-sev-guest version and API use
    [#&#8203;445](https://redirect.github.com/google/go-tpm-tools/issues/445)
    Update typo in README.md
    [#&#8203;459](https://redirect.github.com/google/go-tpm-tools/issues/459)
    Add SEV-SNP policy for signed UEFI measurements
    [#&#8203;446](https://redirect.github.com/google/go-tpm-tools/issues/446)
    Update gce-tcb-verifier version.
    [#&#8203;468](https://redirect.github.com/google/go-tpm-tools/issues/468)
    \[launcher] Optimize serial read in test
    [#&#8203;470](https://redirect.github.com/google/go-tpm-tools/issues/470)
    \[launcher] Switch base image to 113 cos
    [#&#8203;467](https://redirect.github.com/google/go-tpm-tools/issues/467)
    Use confidentialcomputing api v1.6.0 to send SEVSNP attestation
    [#&#8203;472](https://redirect.github.com/google/go-tpm-tools/issues/472)
    Adding EV\_EVENT\_TAG support for PCR9
    [#&#8203;471](https://redirect.github.com/google/go-tpm-tools/issues/471)
    Update gce-tcb-verifier dependency
    [#&#8203;485](https://redirect.github.com/google/go-tpm-tools/issues/485)
    remove duplicate error check
    [#&#8203;488](https://redirect.github.com/google/go-tpm-tools/issues/488)
    Log detailed errors if refreshing SA credential goes wrong
    [#&#8203;481](https://redirect.github.com/google/go-tpm-tools/issues/481)
    Use confidentialcomputing api v1.6.0 to send TDX attestation
    [#&#8203;477](https://redirect.github.com/google/go-tpm-tools/issues/477)
    Removed experiment flags that we would no longer consider rolling back
    [#&#8203;483](https://redirect.github.com/google/go-tpm-tools/issues/483)
    Add retry to container signature fetch in agent
    [#&#8203;489](https://redirect.github.com/google/go-tpm-tools/issues/489)
    Export function to extract and validate AK from server
    [#&#8203;492](https://redirect.github.com/google/go-tpm-tools/issues/492)
    Override /dev/shm size only when specified
    [#&#8203;493](https://redirect.github.com/google/go-tpm-tools/issues/493)
    Add tempfs experiment and gate mounting behind it
    [#&#8203;490](https://redirect.github.com/google/go-tpm-tools/issues/490)
    Instantiate backoff strategy per goroutine
    [#&#8203;496](https://redirect.github.com/google/go-tpm-tools/issues/496)
    Remove EnableSignedContainerCache + EnableMeasureMemoryMonitor from
    container launcher
    [#&#8203;498](https://redirect.github.com/google/go-tpm-tools/issues/498)
    Refactor CEL AppendEvent, to support RTMR
    [#&#8203;486](https://redirect.github.com/google/go-tpm-tools/issues/486)
    Change ParseCosCEL\* to return an AttestedCosState
    [#&#8203;501](https://redirect.github.com/google/go-tpm-tools/issues/501)
    \[launcher] launcher can expose IPv6 ports as well
    [#&#8203;505](https://redirect.github.com/google/go-tpm-tools/issues/505)
    Add the location of the service we are calling to the API error logs
    [#&#8203;506](https://redirect.github.com/google/go-tpm-tools/issues/506)
    Start NPD after LaunchSpec Verification
    [#&#8203;507](https://redirect.github.com/google/go-tpm-tools/issues/507)
    Send client logs with the cloud logging library
    [#&#8203;474](https://redirect.github.com/google/go-tpm-tools/issues/474)
    \[launcher] Add DA lockout params when launching
    [#&#8203;469](https://redirect.github.com/google/go-tpm-tools/issues/469)
    \[launcher] Merge upstream/tdx\_rtmr
    [#&#8203;513](https://redirect.github.com/google/go-tpm-tools/issues/513)
    Bump the go\_modules group across 3 directories with 1 update
    [#&#8203;512](https://redirect.github.com/google/go-tpm-tools/issues/512)
    Bump the go\_modules group across 4 directories with 1 update
    [#&#8203;514](https://redirect.github.com/google/go-tpm-tools/issues/514)
    Revert "\[launcher] Merge upstream/tdx\_rtmr
    ([#&#8203;513](https://redirect.github.com/google/go-tpm-tools/issues/513))"
    [#&#8203;516](https://redirect.github.com/google/go-tpm-tools/issues/516)
    Apply retry logics in confidential computing API + workload image puller
    [#&#8203;511](https://redirect.github.com/google/go-tpm-tools/issues/511)
    Change container workload's default OOM Score
    [#&#8203;522](https://redirect.github.com/google/go-tpm-tools/issues/522)
    Reduce NPD full config
    [#&#8203;520](https://redirect.github.com/google/go-tpm-tools/issues/520)
    Add client-side experiment for NPD Health Monitoring config
    [#&#8203;525](https://redirect.github.com/google/go-tpm-tools/issues/525)
    Bump go-sev-guest to v0.12.1
    [#&#8203;527](https://redirect.github.com/google/go-tpm-tools/issues/527)
    Add AWS Principal Tag type to launcher
    [#&#8203;515](https://redirect.github.com/google/go-tpm-tools/issues/515)
    
    ### New Contributors
    
    
    [@&#8203;savely-krasovsky](https://redirect.github.com/savely-krasovsky)
    in
    [#&#8203;435](https://redirect.github.com/google/go-tpm-tools/issues/435)
    [@&#8203;hkolvenbach](https://redirect.github.com/hkolvenbach) in
    [#&#8203;436](https://redirect.github.com/google/go-tpm-tools/issues/436)
    [@&#8203;liamjm](https://redirect.github.com/liamjm) in
    [#&#8203;459](https://redirect.github.com/google/go-tpm-tools/issues/459)
    
    </details>
    
    ---
    
    ### Configuration
    
    📅 **Schedule**: Branch creation - "on tuesday" (UTC), Automerge - At any
    time (no schedule defined).
    
    🚦 **Automerge**: Disabled by config. Please merge this manually once you
    are satisfied.
    
    ♻ **Rebasing**: Whenever PR becomes conflicted, or you tick the
    rebase/retry checkbox.
    
    🔕 **Ignore**: Close this PR and you won't be reminded about this update
    again.
    
    ---
    
    - [ ] <!-- rebase-check -->If you want to rebase/retry this PR, check
    this box
    
    ---
    
    This PR was generated by [Mend Renovate](https://mend.io/renovate/).
    View the [repository job
    log](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0Mi42OS4xIiwidXBkYXRlZEluVmVyIjoiNDIuNjkuMSIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: otelbot <197425009+otelbot@users.noreply.github.com>
