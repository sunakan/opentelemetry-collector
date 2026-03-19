commit 2fccde610e6477c4349d8e1800239d5b32cff9ed
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Fri Jun 26 13:21:30 2020 -0700

    Remove unnecessary constant and check (#1207)
    
    Support was removed in https://github.com/open-telemetry/opentelemetry-collector/pull/636 and the error will still be returned because we return an error for every unknown protocol.
