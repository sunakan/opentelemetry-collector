commit 749f997fa8d9138cf36b12b82b012606aacc26a9
Author: Tim Rühsen <tim.ruhsen@elastic.co>
Date:   Fri May 23 15:19:53 2025 +0200

    Introduce pprofile.PutAttribute helper (#12798)
    
    #### Description
    This introduces the `pprofile.PutAttribute()` helper method so profile
    extensions can modify attributes.
    
    It replaces the yet unused `pprofile.AddAttribute()` function, as `Add`
    doesn't resonate well with the `pcommon.Map` `Put*` functions.
    
    Additionally, the `PutAttributes()` helper takes into account the map
    k/v nature of attributes, while `AddAttributes()` didn't do this.
    
    #### Testing
    ```
    goos: linux
    goarch: amd64
    pkg: go.opentelemetry.io/collector/pdata/pprofile
    cpu: 12th Gen Intel(R) Core(TM) i7-12800H
                                                              │   old.txt   │      new.txt       │
                                                              │   sec/op    │   sec/op     vs base   │
    AddAttribute/with_a_new_string_attribute-20                 27.66n ± 3%
    AddAttribute/with_an_existing_attribute-20                  27.18n ± 4%
    AddAttribute/with_a_duplicate_attribute-20                  27.18n ± 2%
    AddAttribute/with_a_hundred_attributes_to_loop_through-20   103.0n ± 4%
    PutAttribute/with_a_new_string_attribute-20                               27.71n ± 2%
    PutAttribute/with_an_existing_attribute-20                                28.14n ± 1%
    PutAttribute/with_a_duplicate_attribute-20                                28.14n ± 2%
    PutAttribute/with_a_hundred_attributes_to_loop_through-20                 28.15n ± 2%
    geomean                                                     38.08n        28.04n       ? ¹ ²
    ¹ benchmark set differs from baseline; geomeans may not be comparable
    ² ratios must be >0 to compute geomean
    
                                                              │  old.txt   │      new.txt      │
                                                              │    B/op    │    B/op     vs base   │
    AddAttribute/with_a_new_string_attribute-20                 16.00 ± 0%
    AddAttribute/with_an_existing_attribute-20                  16.00 ± 0%
    AddAttribute/with_a_duplicate_attribute-20                  16.00 ± 0%
    AddAttribute/with_a_hundred_attributes_to_loop_through-20   16.00 ± 0%
    PutAttribute/with_a_new_string_attribute-20                              16.00 ± 0%
    PutAttribute/with_an_existing_attribute-20                               16.00 ± 0%
    PutAttribute/with_a_duplicate_attribute-20                               16.00 ± 0%
    PutAttribute/with_a_hundred_attributes_to_loop_through-20                16.00 ± 0%
    geomean                                                     16.00        16.00       ? ¹ ²
    ¹ benchmark set differs from baseline; geomeans may not be comparable
    ² ratios must be >0 to compute geomean
    
                                                              │  old.txt   │      new.txt      │
                                                              │ allocs/op  │ allocs/op   vs base   │
    AddAttribute/with_a_new_string_attribute-20                 1.000 ± 0%
    AddAttribute/with_an_existing_attribute-20                  1.000 ± 0%
    AddAttribute/with_a_duplicate_attribute-20                  1.000 ± 0%
    AddAttribute/with_a_hundred_attributes_to_loop_through-20   1.000 ± 0%
    PutAttribute/with_a_new_string_attribute-20                              1.000 ± 0%
    PutAttribute/with_an_existing_attribute-20                               1.000 ± 0%
    PutAttribute/with_a_duplicate_attribute-20                               1.000 ± 0%
    PutAttribute/with_a_hundred_attributes_to_loop_through-20                1.000 ± 0%
    geomean                                                     1.000        1.000       ? ¹ ²
    ¹ benchmark set differs from baseline; geomeans may not be comparable
    ² ratios must be >0 to compute geomean
    ```
    
    See also #12390
    
    ---------
    
    Co-authored-by: Damien Mathieu <42@dmathieu.com>
