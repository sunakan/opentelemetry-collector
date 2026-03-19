commit 6748c6b45022034423a5d0366671582c5bd7bc3f
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Fri Oct 4 10:11:46 2019 -0400

    Add data ownership and mutability clarifications (#378)
    
    Modified processors README to clarify data ownership modes.
    
    Exporters are not allowed to modify the data they receive.
    The README now explicitly mentions this.
    
    Addresses https://github.com/open-telemetry/opentelemetry-collector/issues/368
