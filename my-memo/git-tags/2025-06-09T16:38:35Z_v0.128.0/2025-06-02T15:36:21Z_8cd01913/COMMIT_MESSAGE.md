commit 8cd019139f0cbe51373b78362e5cf6bc3bdda882
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Mon Jun 2 17:36:21 2025 +0200

    [chore][confighttp] Fix NewDefaultServerConfig (#13129)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Sets `TLSSetting` to nil on `ServerConfig` since any non-nil value with
    no certificates would fail at runtime.
