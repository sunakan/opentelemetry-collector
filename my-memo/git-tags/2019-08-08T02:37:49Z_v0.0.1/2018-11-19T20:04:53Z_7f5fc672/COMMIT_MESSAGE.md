commit 7f5fc672870b17788ff9283e0581a8af70b88be2
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Mon Nov 19 12:12:41 2018 -0700

    receiver/zipkin: consolidate server starting to receiver
    
    Moved the server starting logic to the receiver and updated
    New to
      New(address string) (*ZipkinReceiver, error)
    instead of
      New(spansink.Sink) (*ZipkinReceiver, error)
    
    This change ensures that after invoking New all the user
    has to do is then just invoke:
       zr.StartTraceReception(context.Context, spansink.Sink) error
    
    and then for cleanup
        defer zr.StopTraceReception(context.Context)
    
    Fixes #212
