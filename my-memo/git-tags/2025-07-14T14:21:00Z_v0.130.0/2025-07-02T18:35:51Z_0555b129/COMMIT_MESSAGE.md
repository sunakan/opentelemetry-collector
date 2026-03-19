commit 0555b12970e1a2dbb07a725c964d9eb896e66dd9
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Wed Jul 2 20:35:51 2025 +0200

    Update release procedure document (#13317)
    
    #### Description
    
    A few changes:
    - Update the section about releasing `collector-contrib` to reflect the
    fact that the Github release is now automatically populated with the
    changelog
    (https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/38730)
    - Update recommendations for dealing with
    https://github.com/open-telemetry/opentelemetry-go-build-tools/issues/47
    with a new workaround (commenting out the unrecognized "merge" entries
    in `.git/config`)
    - Remove what looks like a second reference to the same issue?
    - Put myself and Bogdan back at the end of the release rotation
    - Correct the date for the release of v0.137.0, which is only one week
    after v0.136.0. Feel free to tell me if this wasn't a mistake.
