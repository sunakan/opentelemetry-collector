commit 72a8471b96ad5df66c7a0671fcde7217b263acaa
Author: Damien Mathieu <42@dmathieu.com>
Date:   Wed Mar 5 12:30:37 2025 +0100

    introduce pprofile.AddAttribute helper (#12390)
    
    #### Description
    
    This introduces the `pprofile.AddAttribute` helper method so profile
    extensions can modify attributes.
    Closes #12206
    
    ```
    BenchmarkAddAttribute
    BenchmarkAddAttribute/with_a_new_string_attribute
    BenchmarkAddAttribute/with_a_new_string_attribute-10            30461164                39.55 ns/op           32 B/op          2 allocs/op
    BenchmarkAddAttribute/with_an_existing_attribute
    BenchmarkAddAttribute/with_an_existing_attribute-10             30714298                39.44 ns/op           32 B/op          2 allocs/op
    BenchmarkAddAttribute/with_a_duplicate_attribute
    BenchmarkAddAttribute/with_a_duplicate_attribute-10             29132547                39.47 ns/op           32 B/op          2 allocs/op
    BenchmarkAddAttribute/with_a_hundred_attributes_to_loop_through
    BenchmarkAddAttribute/with_a_hundred_attributes_to_loop_through-10               6762793               176.8 ns/op            32 B/op          2 allocs/op
    ```
    
    Those benchmarks kind of have an N+1 issue, where the method will take
    longer the more attributes there are.
    However, since the attribute table is a map, we can't go around with
    looping through it.
    
    I also had to use `FromRaw` and `AsRaw` in there, to properly handle
    `any` values.
    
    This currently doesn't support removing entries. But doing so would also
    have a non-trivial performance impact, since we'd have to loop through
    the `AttributeIndices` slice.
    
    ---------
    
    Co-authored-by: Tim Rühsen <tim.ruehsen@gmx.de>
    Co-authored-by: Joshua MacDonald <jmacd@users.noreply.github.com>
