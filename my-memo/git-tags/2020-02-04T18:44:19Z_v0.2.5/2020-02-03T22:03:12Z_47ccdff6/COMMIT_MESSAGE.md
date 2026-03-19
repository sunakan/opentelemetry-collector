commit 47ccdff65204c3a17770e7ae1bd6d8a07621da32
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Mon Feb 3 17:03:12 2020 -0500

    Add support for CONSUMER and PRODUCER span kinds for Zipkin V2 (#529)
    
    Previously these span kinds were not supported because OpenCensus
    does not have equivalent span kinds and they were translated as
    "Unspecified" span kind when received by Zipkin receiver.
    
    An earlier fix added this support for Zipkin V1 format. This fix
    extends the support to Zipkin V2 format.
    
    Testing done:
    - Added a unit test to verify translations between ZipkinV2 and OC.
