commit 2e4c56d4be6d16db8c696f060440a1b823f7a332
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Wed Feb 26 20:46:48 2025 +0100

    [chore][mdatagen] Remove telemetry::level from schema file (#12497)
    
    #### Description
    
    The `telemetry::level` key in `metadata.yaml` wasn't used for anything,
    and support for it was dropped in #12144. However, it was never removed
    from the schema file. This PR fixes that.
