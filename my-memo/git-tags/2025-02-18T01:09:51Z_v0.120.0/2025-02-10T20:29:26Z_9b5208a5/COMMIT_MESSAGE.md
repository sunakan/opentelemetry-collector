commit 9b5208a53a811dcd540cb7131ba03212a88793cb
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Feb 10 12:29:26 2025 -0800

    [chore] Remove dead code from mdatagen. (#12336)
    
    Missed by
    https://github.com/open-telemetry/opentelemetry-collector/pull/12304,
    this variables can no longer be initialized so this becomes dead code.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
