commit f5333c7838064b4b3a795ceb4ac081d5be86f495
Author: Damien Mathieu <42@dmathieu.com>
Date:   Mon Feb 9 11:14:08 2026 +0100

    OCB init (#14530)
    
    This introduces a new `ocb init` command which is meant to setup a new
    custom collector repository.
    
    The intent for this new subcommand at the moment is to be rather simple.
    We discussed the potential of making it more powerful with things such
    as `--from-config` that would initialize the manifest from an existing
    collector config.
    In order to keep things reviewable, we'll do this in iterations.
    
    ---------
    
    Co-authored-by: Arthur Silva Sens <arthursens2005@gmail.com>
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
