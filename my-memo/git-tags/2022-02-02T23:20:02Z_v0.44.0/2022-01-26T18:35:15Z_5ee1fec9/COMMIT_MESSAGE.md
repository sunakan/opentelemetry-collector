commit 5ee1fec9fe877a180b30bd4f29979ca21a2fa335
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Wed Jan 26 13:35:15 2022 -0500

    Update to OTLP proto 0.12.0 (#4724)
    
    - Removed all deprecated metric messages and corresponding conversion code and tests.
    - Removed deprecated_code from span status and corresponding conversions and tests.
    - Renamed logs field to log_records in InstrumentationLibraryLogs message.
