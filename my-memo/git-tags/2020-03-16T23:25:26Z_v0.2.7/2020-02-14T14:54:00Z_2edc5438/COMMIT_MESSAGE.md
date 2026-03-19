commit 2edc54387e11cddbd66b9eb9cc2db9c2dfbcb150
Author: Paulo Janotti <paulo@omnition.io>
Date:   Fri Feb 14 06:54:00 2020 -0800

    Do not require a local build to run the demo (#548)
    
    Point the demo, by default, to a pre-built image. Devs can still run
    local builds by settings the env var OTELCOL_IMG.
