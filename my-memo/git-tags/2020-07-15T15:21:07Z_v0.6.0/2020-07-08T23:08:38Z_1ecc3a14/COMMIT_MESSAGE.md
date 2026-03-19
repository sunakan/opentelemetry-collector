commit 1ecc3a14a944cbea2b4e988541c62a9b703424b1
Author: Jeff Cheng <jcheng@signalfx.com>
Date:   Wed Jul 8 19:08:38 2020 -0400

    Initial deb and rpm packaging (#1278)
    
    * Initial deb and rpm packaging
    
    - Uses https://github.com/jordansissel/fpm
    - Builds simple deb and rpm packages that installs the otelcol
    binary to `/usr/bin/otelcol` and `examples/otel-local-config.yaml`
    to `/etc/otel-collector/config.yaml`.
    - TODO: create systemd service scripts
    
    * Packaging updates
    
    - Add support for arm64 packages
    - Move files to internal/buildscripts/packaging/
    - Use single Dockerfile for local deb and rpm builds
    - Explicitly set output dir for packages in circleci
