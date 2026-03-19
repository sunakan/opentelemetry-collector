commit 6cd0db0d5db7d42b61e5fbac6fdd320a1efd280e
Author: Owais Lone <owais@users.noreply.github.com>
Date:   Tue Mar 31 07:26:12 2020 +0530

    Re-enable publishing dev docker images from master (#753)
    
    This PR enables publishing dev docker images from every commit to
    master. This was disabled earlier as I suspected it was causing issues
    with the job that publishes images from tags.
