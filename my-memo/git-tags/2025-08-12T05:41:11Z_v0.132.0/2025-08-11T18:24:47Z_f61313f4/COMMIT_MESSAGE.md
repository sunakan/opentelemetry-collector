commit f61313f4fab43c6de1947a3e391b393722096343
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Mon Aug 11 20:24:47 2025 +0200

    Fix Logger.With followed by componentattribute.WithAttributeSet (#13610)
    
    #### Description
    
    This PR fixes a small bug in componentattribute, where adding fields to
    a Logger with `Logger.With`, then calling
    `componentattribute.WithAttributeSet` would silently fail to set
    component attributes.
    
    This is fixed by overriding the `Core.With` method on
    `consoleCoreWithAttributes`, to make sure that we wrap the modified
    inner core in a `consoleCoreWithAttributes` before returning it.
    
    I added an `extraFields` field to `consoleCoreWithAttributes` so we can
    ensure Zap Fields are added in the same order (first component
    attributes, then custom user fields) when updating the component
    attributes.
    
    This bug doesn't affect `otelTeeCoreWithAttributes`, which already does
    this.
    
    The `componentattribute` API is currently internal, and none of the
    components that use it (the memorylimiter processor and OTLP receiver)
    use `Logger.With`, so there is currently no way to trigger this bug,
    hence the lack of a changelog.
    
    #### Testing
    
    I added a unit test which checks this specific use case. I confirmed
    that it failed before the change and now succeeds.
