commit 986666feed37c9f06ddc68ff968c97d35ebfe520
Author: Emmanuel T Odeke <odeke@ualberta.ca>
Date:   Mon Oct 15 18:26:03 2018 -0700

    interceptor: make endToEnd test an example test (#91)
    
    Previously:
        TestNewInterceptor_endToEnd
    
    served the purpose of demoing how to make an "agent"
    with the OpenCensus interceptor. It just spams stdout
    with output and doesn't perform any assertions
    nor serve any other purpose other than demoing.
    As we add other interceptors, we'll put them in
    here. Instead make it an example test that compiles
    and will serve as the blueprint towards making
    cmd/ocagent modifications.
