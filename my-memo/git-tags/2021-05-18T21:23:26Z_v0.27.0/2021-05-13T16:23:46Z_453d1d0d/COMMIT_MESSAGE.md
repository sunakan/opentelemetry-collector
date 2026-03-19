commit 453d1d0dd60396560de5facb26fff7e28f41b4e8
Author: Owais Lone <owais@users.noreply.github.com>
Date:   Thu May 13 21:53:46 2021 +0530

    Use CircleCI contexts to inject secrets into jobs (#3011)
    
    This will ensure only the jobs that require the secrets get access to
    them as opposed to all jobs getting access via environment variables.
    
    Contexts can also be shared between projects so we'll have a single
    place to manage secrets for both core and contrib CI jobs.
    
    I'll follow up with another change next week that'll further restrict
    access to contexts only to maintainers (or a new publishers group).
