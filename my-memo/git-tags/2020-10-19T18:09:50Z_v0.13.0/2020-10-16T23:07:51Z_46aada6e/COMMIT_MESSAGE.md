commit 46aada6e3c3a9d9414b3433cf044806ce24e291b
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Fri Oct 16 19:07:51 2020 -0400

    Allow configuring URLs per signal in OTLP/HTTP exporter (#1970)
    
    See README for explanation of configuration changes. We need
    this in order to be able to override destination URL per signal.
    The OTLP specification defines the defaults for each signal.
    This change allows the overrides per signal.
