commit 11d8d525232627821683e4213f76c121d6a86ac5
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Thu Feb 1 13:48:52 2024 +0000

    [confmap] Pass ConverterSettings and ProviderSettings to converters and providers (#9443)
    
    **Description:**
    
    For both #5615 and #9162 we need to be able to log during the confmap
    resolution.
    
    My proposed solution is to pass a `*zap.Logger` to converters and
    providers during initialization. These components can then use this to
    log any warnings they need. This PR does the first step: being able to
    pass anything to converters and providers during initialization.
    
    The obvious alternative to this is to change the interface of
    `confmap.Provider` and `confmap.Converter` to pass any warnings in an
    explicit struct. I think the `*zap.Logger` alternative is more natural
    for developers of providers and converters: you just use a logger like
    everywhere else in the Collector.
    
    One problem for the Collector usage of `confmap` is: How does one pass a
    `*zap.Logger` before knowing how a `*zap.Logger` should be configured? I
    think we can work around this by:
    1. Passing a special 'deferred' Logger that just stores the warnings
    without actually logging them (we can use something like
    `zaptest/observer` for this)
    2. Resolving configuration
    3. Building a `*zap.Logger` with said configuration
    4. Logging the entries stored in (1) with the logger from (3) (using
    `zaptest/observer` we can do that by taking the `zapcore.Core` out of
    the logger and manually writing)
    
    **We don't actually need ProviderSettings today, just ConverterSettings,
    but I think it can still be useful.**
    
    **Link to tracking Issue:** Relates to #5615 and #9162
    
    ---------
    
    Co-authored-by: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
