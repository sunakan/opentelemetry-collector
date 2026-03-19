commit b4512e7cab7dbf60d6a2228f6af37648d9de7c0b
Author: Owais Lone <owais@users.noreply.github.com>
Date:   Tue Mar 31 02:49:41 2020 +0530

    Enable publishing releases from tags (#749)
    
    Circle was not running any builds for tags because the publish job had
    other jobs as dependencies and they did not explicitly specify that they
    should be run for tags. Looks like Circle will always run a job for any
    branch unless the branch is ignored and never run a job for a tag unless
    the tag is explicitly enabled.
    
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
