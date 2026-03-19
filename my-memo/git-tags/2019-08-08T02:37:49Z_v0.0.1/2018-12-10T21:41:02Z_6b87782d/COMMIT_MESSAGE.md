commit 6b87782dc04497149fda6f2eb7b6b9e6edf6da62
Author: Steve Flanders <steve@sflanders.net>
Date:   Mon Dec 10 13:41:02 2018 -0800

    Add dynamic support for VERSION and default to latest (#263)
    
    * Add dynamic support for VERSION
    
    As we complete milestones we plan to cut versions. Today, this requires
    editing two separate files and committing them. Instead, default to an
    undefined version and allow the version to be passed as part of
    build_binaries or make.
    
    * Default to version being latest
