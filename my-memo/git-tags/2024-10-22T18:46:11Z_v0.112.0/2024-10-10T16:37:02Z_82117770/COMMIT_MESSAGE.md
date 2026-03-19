commit 82117770f77ad2e2b2eaabd8e372e7029fc778f4
Author: Braydon Kains <93549768+braydonk@users.noreply.github.com>
Date:   Thu Oct 10 12:37:02 2024 -0400

    mdatagen: support custom package name (#11232)
    
    #### Description
    This PR adds support for a new ~~`--package_name` flag~~
    `generated_package_name` config field to allow mdatagen to generate
    packages with names other than `metadata`.
    
    #### Link to tracking issue
    Fixes #11231
    
    #### Testing
    * Unit tests
    * `go install`ing this branch and using it in a test scenario with two
    yaml files and generating two packages.
    
    #### Documentation
