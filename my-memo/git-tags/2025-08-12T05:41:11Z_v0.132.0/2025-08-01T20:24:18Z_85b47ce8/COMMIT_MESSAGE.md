commit 85b47ce850751d2b07e1e257856c3c2bfdd5ce8f
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Fri Aug 1 13:24:18 2025 -0700

    [chore] Refactor pdatagen to use the proto types for fields (#13545)
    
    Part of the effort in
    https://github.com/open-telemetry/opentelemetry-collector/pull/13531.
    
    Would also help with:
    1. Help with trying to remove the need of manually define these extra
    structs and generate them from the protoc parsed code.
    1. Simplifies what we need to manually generate, only the proto type is
    enough.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
