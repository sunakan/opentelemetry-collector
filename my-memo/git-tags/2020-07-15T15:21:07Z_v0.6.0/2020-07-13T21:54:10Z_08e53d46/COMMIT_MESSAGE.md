commit 08e53d465374701865a7f5756a86ce830ac9c827
Author: Jeff Cheng <jcheng@signalfx.com>
Date:   Mon Jul 13 17:54:10 2020 -0400

    Add basic systemd service to deb and rpm (#1335)
    
    - Install `otel-collector` systemd service and run as `otel:otel` user:group
    - Add simple installation test scripts using systemd-in-docker images
