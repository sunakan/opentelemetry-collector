commit 999f5655c9ce8a6e85a6c2fc4e38afaa7df9eab5
Author: Przemek Maciolek <58699843+pmm-sumo@users.noreply.github.com>
Date:   Wed Aug 4 16:28:29 2021 +0200

    Copy contrib's storage interface to core (#3425)
    
    As discussed during the SIG, we want to move storage extension to core, starting with the interface (this PR) so persistent buffer implementation (https://github.com/open-telemetry/opentelemetry-collector/issues/2285) could use it
    
    **Link to tracking Issue:** #3424
    
    **Testing:** Just the interface, no tests
    
    **Documentation:** README.md with API
    
    cc @djaglowski @tigrannajaryan
