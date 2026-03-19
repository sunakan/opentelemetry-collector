commit 6c1ef08e5954c439a14e1b23701760a771ff5790
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Jan 28 11:14:05 2020 -0800

    Add span_names regexp-based filtering to attributes processor (#512)
    
    - Added span_names filter condition.
    - Implemented support for regexp patterns in span_names array.
    - Added E2E test for attributes processor.
    - Added ability to record and verify received data in E2E tests.
    
    Testing:
    1. make e2e-test
    2. Benchmarked `include` filter using regexp. It takes about 1 microsecond per
       span for simple regexes, which is virtually the same performance when strict
       equality is used instead of regex.
    
    Documentation:
    Processors README and config examples altered to show the new capability.
