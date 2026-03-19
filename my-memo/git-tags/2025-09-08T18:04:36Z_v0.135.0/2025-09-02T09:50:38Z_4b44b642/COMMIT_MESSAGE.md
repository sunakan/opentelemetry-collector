commit 4b44b64204d8308518a518e82a4cc7d0a784fa11
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Tue Sep 2 11:50:38 2025 +0200

    Add xpdata.MapBuilder struct (#13617)
    
    #### Description
    
    This PR adds a new `MapBuilder` struct to the `xpdata` package, which
    can be used to more efficiently create a `pcommon.Map` in receivers.
    
    The simplest way to insert data in a `Map` is to repeatedly call
    `Map.PutEmpty`, `Map.PutStr`, or other methods of the `Put` family.
    These methods all handle duplicate keys on a "last write wins" basis by
    calling `Map.Get` to find a potential existing value for the inserted
    key. Unfortunately, `Get` is rather slow, as it performs a linear scan
    of the `Map`'s key/value pairs. This means that the repeated `Put`
    method has quadratic complexity, and has significant overhead even in
    cases with a realistic number of keys.
    
    `MapBuilder` allows components to build up a list of key/value pairs,
    then turn them into a `Map` with very little overhead using the
    `UnsafeIntoMap` method. However, this has the caveat that, if used
    inappropriately, the final `Map` may contain duplicate keys, which
    breaks a basic invariant of the data structure and requirement of the
    OTLP protocol, with unpredictable consequences.
    
    I created [a
    benchmark](https://github.com/jade-guiton-dd/opentelemetry-collector/blob/549e107e852d16f299f4199816a6c20eb5a5ea32/pdata/pcommon/map_experiments_test.go#L75)
    to test this method, as well as a number of alternatives to optimize
    insertions. The benchmark was performed on realistic data containing
    duplicate keys, realistic data without duplicate keys, and worst-case
    data (200 keys, treated as if they may contain duplicate keys). Here are
    the basic results:
    - Using `MapBuilder.UnsafeIntoMap` is the fastest option in all three
    scenarios. In scenarios with duplicate keys, we perform an upfront
    sorting + neighbor-comparison deduplication step before calling the
    method.
    - Realistic data without duplicates: This results in **-49% runtime**
    compared to the `Put` version.
    - Realistic data with duplicates: Despite the extra work of the
    deduplication step, this still results in -11% runtime. This is the use
    case that I am interested in using.
    - Adding the data into a Go `map` and using the existing `Map.FromRaw`
    method, with code to reuse the `map` across iterations:
    - Worst-case data: Using `FromRaw` succeeds at reducing the worst-case
    complexity (-92% runtime compared to using `Put`), but manual sort-based
    deduplication + `MapBuilder.UnsafeIntoMap` still results in a further
    -56% runtime reduction.
    - Realistic data: Somewhat slower than `Put` (+3% runtime with
    duplicates / +29% runtime with no duplicates), and performs more memory
    allocations.
    - These numbers are significantly worse in the simpler (and more
    parallelizable) version where a new `map` is allocated each time.
    - The safer alternative `XIntoMap` methods, which check that the input
    keys are distinct in various ways, are all too slow to be useful in the
    "realistic, no duplicates" case, and are worse than `UnsafeIntoMap` in
    other cases. I would consider adding them only if `UnsafeIntoMap` is
    deemed too dangerous to even be in an experimental API like `xpdata`.
    - Changing `pcommon.Map` internals to use a sorted array or Go `map`
    representation in order to reduce the cost of `Put`/`Get` succeeds at
    reducing the worst-case time complexity as well, but is invariably
    slower than the `Put` version in the realistic scenarios.
    
    #### Testing
    
    I added a basic unit test for `MapBuilder`'s functionality.
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
