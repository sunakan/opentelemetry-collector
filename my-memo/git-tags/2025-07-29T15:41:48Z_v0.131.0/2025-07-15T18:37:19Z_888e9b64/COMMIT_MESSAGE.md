commit 888e9b64594f755acd312baf2dbb8c92b0eaf548
Author: Damien Mathieu <42@dmathieu.com>
Date:   Tue Jul 15 20:37:19 2025 +0200

    [chore] generate valid profiles test data (#13375)
    
    #### Description
    
    The profiles test data we currently generate isn't valid per
    [pdatatest.Validate](https://github.com/open-telemetry/opentelemetry-collector-contrib/blob/main/pkg/pdatatest/pprofiletest/validate.go#L13).
    This change fixes that.
    
    This goes hand in hand with
    https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/41231
