commit 2e9dda52975e466a7bb28837fb98de2a0724f70f
Author: Damien Mathieu <42@dmathieu.com>
Date:   Sun Sep 14 18:19:01 2025 +0200

    Fix pprofile timestamp unix nano to be a fixed64 (#13825)
    
    This was missed in my previous PR. The `timestamp_unix_nano` field has
    changed to be a fixed rather than uint.
    See
    https://github.com/open-telemetry/opentelemetry-proto/blob/main/opentelemetry/proto/profiles/v1development/profiles.proto#L257
