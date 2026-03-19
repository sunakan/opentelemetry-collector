commit 3f43d69b70e0bd529339d8beb26c04baabcfad4a
Author: Alex Boten <aboten@lightstep.com>
Date:   Wed Nov 10 08:39:36 2021 -0800

    [test] cleanup in otlp_test (#4386)
    
    The `createSingleSpanTrace` makes a single testdata.GenerateTracesOneSpan() call, no point in having a separate function for this.
