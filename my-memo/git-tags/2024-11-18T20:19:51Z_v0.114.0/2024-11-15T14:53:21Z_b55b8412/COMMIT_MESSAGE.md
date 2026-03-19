commit b55b841200b1bac11c8b5a31d4672ea950f3bbe5
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Fri Nov 15 15:53:21 2024 +0100

    [chore] Use pseudo-versions to require `extensiontest` (#11677)
    
    #### Description
    
    Now that the PR to split `extensiontest` into its own module (#11629)
    has landed, we can import the new module in an externally-resolvable way
    using the pseudo-version corresponding to the merge commit, similar to
    what I did for `componenttest` (#11668). After the next release
    (0.114.0), we will be able to use that version number instead for
    internal imports.
