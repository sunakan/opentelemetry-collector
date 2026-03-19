commit 3b06acccb124307bdea83c50d77d36eed9447927
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Mon Dec 16 10:16:22 2019 -0500

    Add OpenCensus data sender and E2E test (#466)
    
    OpenCensus E2E test was previously using JaegerThrift sender.
    Now it uses OpenCensus protocol on both ends.
