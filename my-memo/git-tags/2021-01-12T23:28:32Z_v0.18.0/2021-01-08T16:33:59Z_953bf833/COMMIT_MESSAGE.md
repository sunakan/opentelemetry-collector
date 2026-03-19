commit 953bf833927bedab1d9a2b6356c3a6c2a2123af7
Author: Andrei Ozerov <andrei.ozerov92@gmail.com>
Date:   Fri Jan 8 19:33:59 2021 +0300

    Rename opentelemetry-proto-gen package to protogen (#2344)
    
    Remove hyphens sice the idiomatic style is to not have word delimiters
    at all, or have `_` as an exception.
    
    Remove `opentelemetry-` prefix since the package is within otlp already and
    there a no types in that package directly i.e. alias is not a problem.
