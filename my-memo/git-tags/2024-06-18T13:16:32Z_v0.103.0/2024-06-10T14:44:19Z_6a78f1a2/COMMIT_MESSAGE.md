commit 6a78f1a25fd2d6ccdac1669a4fccd125acac7ba6
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Mon Jun 10 07:44:19 2024 -0700

    [mdatagen] add support for optional internal metrics (#10316)
    
    This allows metrics to be initialized at a later time as is the case for
    the queue metrics in exporterhelper which are only initialized if a
    queue is configured.
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
