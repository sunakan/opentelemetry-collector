commit 2c15bfafe191afb5a9f7c087061be546d4506324
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Tue Jul 2 10:38:24 2024 +0200

    [chore][VERSIONING.md] Changing protocol support for security is allowed (#10460)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    We have recently discussed bumping the minimum TLS version to follow
    security best practices.
    Since we are about to stabilize `configtls` (see #10344), I raised the
    question of whether this would be a breaking change that should be done
    before 1.0.
    
    I argue that we should be allowed to do this after 1.0 because:
    - The Go 1 version compatibility doc states
    > Security. A security issue in the specification or implementation may
    come to light whose resolution requires breaking compatibility. We
    reserve the right to address such security issues.
    
    - The Go team has made [similar
    changes](https://github.com/golang/go/issues/45428) in the past for Go
    as a whole
    
    
    While this is not a security issue but a security best practice, the
    golang/go issue seems to indicate that changes like this would be in the
    spirit of the Go 1 version compatibility promise.
