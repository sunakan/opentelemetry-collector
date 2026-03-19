commit edf0f1d5529daae1074e271f1f1ee4398ac32900
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Mon Jul 21 11:39:57 2025 -0400

    [chore] Add tests for network code propagation with consumererror (#13424)
    
    This adds some E2E tests that show how network codes propagate from the
    OTLP(/HTTP) exporter to the OTLP receiver (both serving over HTTP and
    gRPC). The goal is that as we add the new `consumererror.Error` type and
    any related types to the pipeline, we can use these tests to understand
    the net effect of the errors.
    
    Most of the tests won't require changes after we add the new error type,
    but note the comment in `TestHTTPToHTTP` that shows where the error type
    will add functionality.
    
    These tests don't cover a few things right now:
    * Any transformation of the errors as they travel back up the pipeline
    by internal parts of the the pipeline graph (fanouts, obsreporter,
    etc.). These could impact what the OTLP receiver returns, so we may want
    to test them later as we touch those components. We may want these
    direct tests regardless since these components have a contract with each
    other that likely should exist outside our service implementation.
    * Retry handling. This hasn't been fully added to the errors yet, so
    I'll wait until that's closer to add tests.
