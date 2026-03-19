commit 42eaa5e7180cea6bc420c7b779dc61429f382092
Author: Roger Coll <rogercoll@protonmail.com>
Date:   Mon Oct 6 17:10:41 2025 +0200

    docs: fix grpc protocol configuration name (#13830)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    `grpc/protobuf` is not a valid configuration option for the otelconf
    protocol configuration, `grpc` should be used instead. See:
    https://github.com/open-telemetry/opentelemetry-go-contrib/blob/main/otelconf/v0.3.0/config.go#L30C26-L30C30
    
    Co-authored-by: Damien Mathieu <42@dmathieu.com>
