commit 1c603aa604a7f9b7410eb2e331864a715d020ade
Author: Bas van Beek <basvanbeek@users.noreply.github.com>
Date:   Mon Feb 11 17:13:56 2019 +0100

    Dockerfile: include ssl certificates (#371)
    
    To allow for exporters or any outside service that needs TLS/SSL,
    we need to include certificaticates e.g. for the Stackdriver exporter.
