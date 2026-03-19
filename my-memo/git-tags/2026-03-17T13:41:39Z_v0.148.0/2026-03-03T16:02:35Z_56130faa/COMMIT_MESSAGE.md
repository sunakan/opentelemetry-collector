commit 56130faa44756f1c6225c329205f73b3c83fedf3
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Mar 3 16:02:35 2026 +0000

    Update github-actions deps (major) (#14679)
    
    This PR contains the following updates:
    
    | Package | Type | Update | Change |
    |---|---|---|---|
    |
    [actions/download-artifact](https://redirect.github.com/actions/download-artifact)
    | action | major | `v7.0.0` → `v8.0.0` |
    |
    [actions/upload-artifact](https://redirect.github.com/actions/upload-artifact)
    | action | major | `v6.0.0` → `v7.0.0` |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the [Dependency
    Dashboard](../issues/8903) for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>actions/download-artifact (actions/download-artifact)</summary>
    
    ###
    [`v8.0.0`](https://redirect.github.com/actions/download-artifact/releases/tag/v8.0.0)
    
    [Compare
    Source](https://redirect.github.com/actions/download-artifact/compare/v7.0.0...v8.0.0)
    
    ##### v8 - What's new
    
    ##### Direct downloads
    
    To support direct uploads in `actions/upload-artifact`, the action will
    no longer attempt to unzip all downloaded files. Instead, the action
    checks the `Content-Type` header ahead of unzipping and skips non-zipped
    files. Callers wishing to download a zipped file as-is can also set the
    new `skip-decompress` parameter to `false`.
    
    ##### Enforced checks (breaking)
    
    A previous release introduced digest checks on the download. If a
    download hash didn't match the expected hash from the server, the action
    would log a warning. Callers can now configure the behavior on mismatch
    with the `digest-mismatch` parameter. To be secure by default, we are
    now defaulting the behavior to `error` which will fail the workflow run.
    
    ##### ESM
    
    To support new versions of the @&#8203;actions/\* packages, we've
    upgraded the package to ESM.
    
    ##### What's Changed
    
    - Don't attempt to un-zip non-zipped downloads by
    [@&#8203;danwkennedy](https://redirect.github.com/danwkennedy) in
    [#&#8203;460](https://redirect.github.com/actions/download-artifact/pull/460)
    - Add a setting to specify what to do on hash mismatch and default it to
    `error` by
    [@&#8203;danwkennedy](https://redirect.github.com/danwkennedy) in
    [#&#8203;461](https://redirect.github.com/actions/download-artifact/pull/461)
    
    **Full Changelog**:
    <https://github.com/actions/download-artifact/compare/v7...v8.0.0>
    
    </details>
    
    <details>
    <summary>actions/upload-artifact (actions/upload-artifact)</summary>
    
    ###
    [`v7.0.0`](https://redirect.github.com/actions/upload-artifact/releases/tag/v7.0.0)
    
    [Compare
    Source](https://redirect.github.com/actions/upload-artifact/compare/v6.0.0...v7.0.0)
    
    #### v7 What's new
    
    ##### Direct Uploads
    
    Adds support for uploading single files directly (unzipped). Callers can
    set the new `archive` parameter to `false` to skip zipping the file
    during upload. Right now, we only support single files. The action will
    fail if the glob passed resolves to multiple files. The `name` parameter
    is also ignored with this setting. Instead, the name of the artifact
    will be the name of the uploaded file.
    
    ##### ESM
    
    To support new versions of the `@actions/*` packages, we've upgraded the
    package to ESM.
    
    #### What's Changed
    
    - Add proxy integration test by
    [@&#8203;Link-](https://redirect.github.com/Link-) in
    [#&#8203;754](https://redirect.github.com/actions/upload-artifact/pull/754)
    - Upgrade the module to ESM and bump dependencies by
    [@&#8203;danwkennedy](https://redirect.github.com/danwkennedy) in
    [#&#8203;762](https://redirect.github.com/actions/upload-artifact/pull/762)
    - Support direct file uploads by
    [@&#8203;danwkennedy](https://redirect.github.com/danwkennedy) in
    [#&#8203;764](https://redirect.github.com/actions/upload-artifact/pull/764)
    
    #### New Contributors
    
    - [@&#8203;Link-](https://redirect.github.com/Link-) made their first
    contribution in
    [#&#8203;754](https://redirect.github.com/actions/upload-artifact/pull/754)
    
    **Full Changelog**:
    <https://github.com/actions/upload-artifact/compare/v6...v7.0.0>
    
    </details>
    
    ---
    
    ### Configuration
    
    📅 **Schedule**: Branch creation - "on tuesday" (UTC), Automerge - At any
    time (no schedule defined).
    
    🚦 **Automerge**: Disabled by config. Please merge this manually once you
    are satisfied.
    
    ♻ **Rebasing**: Whenever PR becomes conflicted, or you tick the
    rebase/retry checkbox.
    
    👻 **Immortal**: This PR will be recreated if closed unmerged. Get
    [config
    help](https://redirect.github.com/renovatebot/renovate/discussions) if
    that's undesired.
    
    ---
    
    - [ ] <!-- rebase-check -->If you want to rebase/retry this PR, check
    this box
    
    ---
    
    This PR was generated by [Mend Renovate](https://mend.io/renovate/).
    View the [repository job
    log](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0My40OC4xIiwidXBkYXRlZEluVmVyIjoiNDMuNDguMSIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
