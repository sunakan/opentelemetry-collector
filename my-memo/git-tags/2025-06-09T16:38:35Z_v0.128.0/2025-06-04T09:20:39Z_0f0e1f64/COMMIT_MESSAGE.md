commit 0f0e1f64de98d4e7ece165eee6b808992d8da70b
Author: Roger Coll <rogercoll@protonmail.com>
Date:   Wed Jun 4 11:20:39 2025 +0200

    docs: none values should not take any value (#13141)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Creating an empty Optional[T] type should not require the value.
    
    See:
    https://github.com/open-telemetry/opentelemetry-collector/blob/main/config/configoptional/optional.go#L109
