commit 8a5141878a2daffd34c60b13f57e3e3808bfd14b
Author: Emmanuel T Odeke <odeke@ualberta.ca>
Date:   Thu Oct 18 12:36:27 2018 -0700

    README: fix Stackdriver trace enabling flag (#116)
    
    The README was stale in regards to the Stackdriver
    configuration flags in YAML.
    This change updates the README to indicate that
    the correct flag is `enable_traces` and not `enableTraces`
    
    Fixes #113
    Supersedes #114
