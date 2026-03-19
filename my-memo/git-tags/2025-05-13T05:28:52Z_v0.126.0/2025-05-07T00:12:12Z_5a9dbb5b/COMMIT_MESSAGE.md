commit 5a9dbb5b021d1cf134442bd84a74ffd8c0a28831
Author: Vihas Makwana <121151420+VihasMakwana@users.noreply.github.com>
Date:   Wed May 7 05:42:12 2025 +0530

    [chore][confma] minor refactor of `enableMergeAppendOption` feature gate (#12976)
    
    @mx-psi @dmitryax While working on my RFC, I realized that we can
    simplify the logic by moving the merge behavior into `conf.Merge`.
    Currently, the feature gate check happens externally, and we choose the
    merge option based on that.
    
    This PR moves the check inside `conf.Merge`. By doing this
    [converters](https://github.com/open-telemetry/opentelemetry-collector/blob/main/confmap/README.md)
    can also make use of this feature.
    
    There are no changes to any API signatures, so this doesn’t introduce
    any breaking changes. Let me know what you think about this.
