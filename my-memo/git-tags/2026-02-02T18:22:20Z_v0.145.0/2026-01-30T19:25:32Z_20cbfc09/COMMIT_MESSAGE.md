commit 20cbfc09f93dc45d0f903fd40e74b08c98292e7b
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Fri Jan 30 20:25:32 2026 +0100

    [configoptional] Fix inner Unmarshaler method not being called (#14504)
    
    #### Description
    
    When a config struct is wrapper inside `configoptional.Optional`, the
    `Unmarshal` method on the struct will never be called. This is because
    `confmap` deliberately skips the top-level Unmarshaler when unmarshaling
    a `Conf` which was passed as a parameter of an `Unmarshal` hook, in
    order to avoid infinite recursion.
    
    This PR attempts to fix this bug by introducing a new `confmap` option,
    which allows forcing the use of top-level Unmarshalers in cases where we
    know this does not cause infinite recursion (ie. when we're unmarshaling
    into a different config struct type).
    
    I've listed two other possible solutions to the problem in the tracking
    issue.
    
    #### Link to tracking issue
    Fixes #14500
    
    #### Testing
    I modified the test that was supposed to check the situation described
    in #14500 to use `Conf.Unmarshal` instead of calling
    `Optional.Unmarshal` directly. This makes sure the test fails before the
    fix is applied.
    
    I also added a simple unit test for the new
    `confmap.WithForceUnmarshaler` option, showing that it allows a
    recursive call of top-level `Unmarshal`.
    
    #### Documentation
