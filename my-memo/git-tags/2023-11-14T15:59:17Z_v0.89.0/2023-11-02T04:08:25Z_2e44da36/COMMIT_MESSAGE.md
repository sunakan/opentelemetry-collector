commit 2e44da36e2c666db35884dca2c4df543b56a6aba
Author: Yuri Shkuro <yurishkuro@users.noreply.github.com>
Date:   Thu Nov 2 00:08:25 2023 -0400

    [service/extensions] extension lifecycle order (#8768)
    
    **Description**:
    Enforce order of start and shutdown of extensions according to their
    internally declared dependencies
    
    **Link to tracking Issue**:
    Resolves #8732
    
    **Motivation**:
    This is an alternative approach to #8733 which uses declaration order in
    the config to start extensions. That approach (a) enforces order when
    it's not always necessary to enforce, and (b) exposes unnecessary
    complexity to the user by making them responsible for the order.
    
    This PR instead derives the desired order of extensions based on the
    dependencies they declare by implementing a `DependentExtension`
    interface. That means that extensions that must depend on others can
    expose this interface and be guaranteed to start after their
    dependencies, while other extensions can be started in arbitrary order
    (same as happens today because of iterating over a map).
    
    The extensions that have dependencies have two options to expose them:
    1. if the dependency is always static (e.g. `jaeger_query` extension
    depending on `jaeger_storage` as in the OP), the extension can express
    this statically as well, by returning a predefined ID of the dependent
    extension
    2. in cases where dependencies are dynamic, the extension can read the
    names of the dependencies from its configuration.
    
    The 2nd scenario is illustrated by the following configuration. Here
    each complex extension knows that it needs dependencies that implement
    `storage` and `encoding` interfaces (both existing APIs in collector &
    contrib), but does not know statically which instances of those, the
    actual names are supplied by the user in the configuration.
    
    ```yaml
    extensions:
      complex_extension_1:
        storage: filestorage
        encoding: otlpencoding
      complex_extension_2:
        storage: dbstorage
        encoding: jsonencoding
      filestorage:
        ...
      dbstorage:
        ...
      otlpencoding:
      jsonencoding:
    ```
    
    **Changes**:
    * Introduce `DependentExtension` optional interface
    * Change `Extensions` constructor to derive the required order using a
    directed graph (similar to pipelines)
    * Inherited from #8733 - use new ordered list of IDs to
    start/stop/notify extensions in the desired order (previously a map was
    used to iterate over, which resulted in random order).
    * Tests
    
    **Testing**:
    Unit tests
    
    ---------
    
    Signed-off-by: Yuri Shkuro <github@ysh.us>
    Co-authored-by: Antoine Toulme <antoine@lunar-ocean.com>
