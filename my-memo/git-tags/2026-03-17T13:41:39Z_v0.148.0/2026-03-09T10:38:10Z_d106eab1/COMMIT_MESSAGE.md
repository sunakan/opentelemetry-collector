commit d106eab1b3f0a58908896d6c05a53f1b372c0211
Author: Ajay Upadhyay <140410149+57Ajay@users.noreply.github.com>
Date:   Mon Mar 9 16:08:10 2026 +0530

    [exporter/debug] Print metric metadata in detailed verbosity (#14668)
    
    **Description:**
    This PR fixes an issue where the `debug` exporter (with `verbosity:
    detailed`) would print the Metric Descriptor but omit the `Metadata`
    field. This ensures that all parts of the Metric data model are visible
    during debugging.
    
    This issue was originally reported in
    [open-telemetry/opentelemetry-collector-contrib#46540](https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/46540).
    
    This PR fixes issue: #14667
    
    **Testing:**
    - [x] Added a new unit test case `metrics_with_metadata` in
    `metrics_test.go`.
    - [x] Verified locally that the output now includes the Metadata section
    as expected.
    
    ---------
    
    Signed-off-by: 57Ajay <57ajay.u@gmail.com>
    Co-authored-by: Andrzej Stencel <andrzej.stencel@elastic.co>
