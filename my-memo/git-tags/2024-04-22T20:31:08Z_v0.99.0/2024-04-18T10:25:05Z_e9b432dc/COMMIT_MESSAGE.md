commit e9b432dcea3699dde1e0118e7a3c6df3dff36137
Author: Kristina Pathak <kristina.pathak@lightstep.com>
Date:   Thu Apr 18 03:25:05 2024 -0700

    [builder] Add  strict versioning (#9897)
    
    **Description:** <Describe what has changed.>
    Adds strict version checking in the builder. This enables users to
    ensure that the versions specified in the builder config are the
    versions used in the go.mod when building the collector binary. This can
    be disabled with --skip-strict-versioning.
    
    **Link to tracking Issue:** #9896
    
    **Testing:** Added unit tests
    
    **Documentation:** Added to builder README
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
