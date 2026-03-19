commit 12daa2e201b75d8885474affc75c194555d4174a
Author: Dino Oliva <dinooliva@users.noreply.github.com>
Date:   Mon Nov 25 08:14:22 2019 -0800

    Add environment variable substitution to the Prometheus Receiver config (#431)
    
    The OpenTelemetery Collector currently provides environment variable substitution for config files but this doesn't work for the 'config' portion of the Prometheus receiver where a custom unmarshaler used.
    
    To support our current use-case, we need this feature available for the 'config' portion so we extend the custom unmarshaler to provide it.
