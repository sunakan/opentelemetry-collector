commit 302df23d27e2abd75293a4b3a217e979d887b871
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Jan 18 12:59:22 2022 -0500

    Add external process execution guidelines (#4652)
    
    The guidelines are necessary to explain how we want to generally approach external process execution. This was recently brought up in https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/6512
    
    If we accept these guidelines the following should happen:
    - The prometheusexecreceiver should be modified to allow only a hard-coded list of exporters.
    - The fluentbitextension should be either removed or significantly
      limited in terms of what locations and what executable file names it can allow.
    - https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/6512
      will be rejected, possibly substituted by a plugin system that @zenmoto
      referred to in https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/6512#issuecomment-996922645
      if we find useful to have such plugin system.
