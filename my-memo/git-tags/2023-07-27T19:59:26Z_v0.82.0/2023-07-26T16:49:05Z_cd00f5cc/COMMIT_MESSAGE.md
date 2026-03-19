commit cd00f5cc16a3a52bffd0798d40e030fcf0aa5cc5
Author: Juraci Paixão Kröhling <juraci@kroehling.de>
Date:   Wed Jul 26 13:49:05 2023 -0300

    Revert usage of multimod for diff between versions (#8137)
    
    This PR reverts #8024, as it introduced a new behavior, causing the
    release to be blocked.
    
    Apparently, multimod has a return code of 1 when diffs are seen, causing
    the prepare-release target to break. After this release, we can try to
    get multimod to behave in the same way as this PR.
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
