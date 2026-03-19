commit 393e98f73e42a1c40f91c56cdabd9b0f07ddacf0
Author: Gregor Zeitlinger <gregor.zeitlinger@zalando.de>
Date:   Fri Oct 9 00:15:20 2020 +0200

    Match spans against the instrumentation library and resource attributes (#928)
    
    ### Add the possibility to match spans against the instrumentation library.
    
    This is how it works:
    
    ```
    // version match
    //  expected actual  match
    //  nil      <blank> yes
    //  nil      1       yes
    //  <blank>  <blank> yes
    //  <blank>  1       no
    //  1        <blank> no
    //  1        1       yes
    ```
    
    You can decide to match against all versions (expected = `nil`), a specific version (e.g. expected = `1`), or against "version not provided" (expected = `<blank>`).
    
    ### match spans on resource attributes
    
    Use case: drop attribute values (e.g. a password) for a certain version (`host.image.version`)
    
    ### allow regexp when matching attribute value if it is a string
    
    Regular expressions should only be prohibited if the expected value is not a string (because an implicit conversion to string would be unexpected).
    If the expected value is a string, then a regular expression should be allowed.
