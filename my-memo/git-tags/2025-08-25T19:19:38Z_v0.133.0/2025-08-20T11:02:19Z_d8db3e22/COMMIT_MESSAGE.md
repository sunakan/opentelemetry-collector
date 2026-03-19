commit d8db3e22bc4e5dcea4daf2a6448317df519ab4b9
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Wed Aug 20 11:02:19 2025 +0000

    [chore][internal/telemetry] Handle non-string attributes (#13612)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    While working on #13474, I realized using `AsString` would not work
    here, since [the
    documentation](https://pkg.go.dev/go.opentelemetry.io/otel/attribute#Value.AsString)
    says:
    
    > AsString returns the string value. Make sure that the Value's type is
    STRING.
    
    We actually only use string valued attributes and we don't allow the
    user to set its own attributes, so I am not adding a changelog entry for
    this, but this is good for future-proofing.
