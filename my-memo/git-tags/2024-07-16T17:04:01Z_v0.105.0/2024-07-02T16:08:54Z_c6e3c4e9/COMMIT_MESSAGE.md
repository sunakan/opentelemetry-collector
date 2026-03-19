commit c6e3c4e95fc739b5f8624f2fb11b4835ac9cdac3
Author: Roger Coll <rogercoll@protonmail.com>
Date:   Tue Jul 2 18:08:54 2024 +0200

    fix: remove extra closing parenthesis in sub-config error (#10479)
    
    #### Description
    
    Removed an extra closing parenthesis. This corrects the formatting of
    the error message for unexpected sub-config value kinds.
    
    Found in:
    https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/33268/files#diff-9137db5fde5eb0d6870425c0023cec1a5bdfe92f58f8a72e278b55635afc6e95R48
