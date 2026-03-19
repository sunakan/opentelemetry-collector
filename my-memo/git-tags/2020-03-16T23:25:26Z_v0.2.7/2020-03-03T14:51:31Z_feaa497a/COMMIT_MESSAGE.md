commit feaa497a243b8333fe99bfc55b8c5e313dc2d5e9
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Tue Mar 3 09:51:32 2020 -0500

    Remove the bundler from oc metrics (#593)
    
    The actual bundling is not being used and original data is sent data the pipe. Removing it, we will add a proper batcher/bundler as a processor to metric pipelines.
