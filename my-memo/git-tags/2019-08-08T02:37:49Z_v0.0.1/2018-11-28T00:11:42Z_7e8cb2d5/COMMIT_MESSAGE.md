commit 7e8cb2d5e0c41b7f4b8ccd67b5ea9fb7040dc809
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Mon Nov 26 22:07:33 2018 -0800

    cmd/ocagent: remove vestigial code
    
    The code for protoToSpanData comes from
    the day of a prototype that used this repository
    but has since diverged since we reused it for
    the OpenCensus Agent/Service.
