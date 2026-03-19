commit 1e229192f218f165d0f11634c9a1b169b2987b96
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Thu Aug 21 02:39:34 2025 -0700

    [chore] Fix lint for GOOS=windows (on Windows and other OSes) (#13625)
    
    Fix lint target when `GOOS=windows` and ensure that is possible to run
    `make lint` from other OSes. This is part of the work to release the
    collector for Windows ARM, tracked via
    https://github.com/open-telemetry/opentelemetry-collector-releases/issues/412
    
    The golang sources were changed for it to pass lint when `GOOS=windows`,
    I will look into adding that to CI so it doesn't regress again.
