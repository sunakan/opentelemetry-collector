commit 33c15253d226fecf71022811a7933136fe9dc440
Author: Ben Keith <benkeith@splunk.com>
Date:   Wed Jul 29 13:29:44 2020 -0400

    Add CircleCI check for contrib repo breakage (#1098)
    
    It just runs the latest master contrib tests against the HEAD of the
    current build to make sure none of the changes are incompatible.
    
    It should not be a required check, but is meant to be a heads up to
    contributors to fix the contrib repo after their PR is merged.
