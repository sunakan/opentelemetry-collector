commit 424a12102dca19c6630e879b9b3c66a54413d0c0
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Fri Jul 25 22:29:53 2025 +0300

    Generate marshal JSON without gogo proto jsonpb (#13450)
    
    This PR is part of an effort to remove usage of gogo proto in pdata and
    switch to a model where we enhance the pdatagen tool to generate compact
    (reflection free to avoid DCE disabling) and faster code.
    
    The list of the PRs will do:
    1. Auto generate the JSON marshaling logic (this PR).
    1. Auto generate the JSON unmarshaling logic and replace manually
    written code.
    1. Auto generate the proto marshaling logic.
    1. Auto generate the proto unmarshaling logic.
    1. Remove the usage of auto-generate gogo proto code completely and
    generate field members in the pdata objects.
    1. Add support for lazy unmarshaling.
    
    Performance improvements are more than 30x:
    
    **Before:**
    ```
    BenchmarkLogsMarshalJSON
    BenchmarkLogsMarshalJSON-12           94          12541041 ns/op         8458944 B/op     196458 allocs/op
    BenchmarkMetricsMarshalJSON
    BenchmarkMetricsMarshalJSON-12                 3         452309069 ns/op        350229024 B/op   8131400 allocs/op
    BenchmarkProfilesMarshalJSON
    BenchmarkProfilesMarshalJSON-12               30          36731071 ns/op        20317088 B/op     531652 allocs/op
    BenchmarkTracesMarshalJSON
    BenchmarkTracesMarshalJSON-12                  8         132521260 ns/op        95920588 B/op    2208765 allocs/op
    ```
    
    **After:**
    ```
    BenchmarkLogsMarshalJSON
    BenchmarkLogsMarshalJSON-12         3000            403587 ns/op          282465 B/op       1487 allocs/op
    BenchmarkMetricsMarshalJSON
    BenchmarkMetricsMarshalJSON-12                72          16772373 ns/op        11856529 B/op      72833 allocs/op
    BenchmarkProfilesMarshalJSON
    BenchmarkProfilesMarshalJSON-12             1460            849419 ns/op          674545 B/op       1145 allocs/op
    BenchmarkTracesMarshalJSON
    BenchmarkTracesMarshalJSON-12                271           4344647 ns/op         3010259 B/op      16237 allocs/op
    ```
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
