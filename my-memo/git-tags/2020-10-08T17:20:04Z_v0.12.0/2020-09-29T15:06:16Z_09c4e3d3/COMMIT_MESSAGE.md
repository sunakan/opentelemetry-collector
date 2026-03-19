commit 09c4e3d3e78b5e0af3f9672a28f7a0df48707375
Author: Akash Suresh <akash@signalfx.com>
Date:   Tue Sep 29 11:06:16 2020 -0400

    hostmetricsreceiver: (filesystems scraper) Collect additional labels from partitions (#1858)
    
    Collect additional labels (fs.type, mount.mode, mount.point) in the filesystems scraper. Currently the receiver does not honor multiple mount points for a single device. This change will capture all mount points in such cases and also collects the mode (ro or rw). This PR also adds a label called fs.type to capture filesystem type.
    
    In a followup PR, will add ability to filter by mount points as well.
    
    Link to tracking Issue: #1852
