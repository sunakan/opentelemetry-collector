commit 4e1018b555d280d4b529d10f614de5231b667d13
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Oct 27 08:28:24 2025 -0700

    Remove usage of gogoproto and generate the structs with pdatagen (#14078)
    
    This is a huge PR that does not touch any of the critical logic
    "marshaling/unmarshaling" of the pdata. We have e2e tests with the go
    official generated protobufs to ensure nothing breaks.
    
    The easy way to review this is to only look at what change publicly in
    "pdata/pcommon", "pdata/plog", "pdata/ptrace", "pdata/pmetric",
    "pdata/pprofile", "pdata/xpdata".
    
    This PR also switches the xpada request to use the same generating
    mechanism as pdatagen.
    
    **Binary size before:**
    ```
    42246018 bin/otelcorecol_darwin_arm64
    ```
    **Binary size after:**
    ```
    40709202 bin/otelcorecol_darwin_arm64
    ```
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
