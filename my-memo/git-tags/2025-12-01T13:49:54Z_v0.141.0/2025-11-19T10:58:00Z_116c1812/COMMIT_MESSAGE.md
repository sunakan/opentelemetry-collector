commit 116c1812fe3b55d874853c078e28934fc1ceb4da
Author: Damien Mathieu <42@dmathieu.com>
Date:   Wed Nov 19 11:58:00 2025 +0100

    Introduce `switchDictionary` methods for profiles (#14075)
    
    This is the next step towards
    https://github.com/open-telemetry/opentelemetry-collector/issues/13106
    
    It introduces private `switchDictionary` methods for all profile
    structs, so their base dictionary can be switched, which is a
    requirement (and maybe the biggest bit) of merging profiles.
    
    Right now, the private method isn't called yet, because this PR is
    already very big, and I believe introducing `MergeTo` should be in
    another PR.
    But the gist is that to merge profiles together, we need to change the
    base dictionary for the profiles that are being moved before we can
    merge the two slices of resource profiles into one.
