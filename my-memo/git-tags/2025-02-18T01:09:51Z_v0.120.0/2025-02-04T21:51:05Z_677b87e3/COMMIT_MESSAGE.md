commit 677b87e3ab5c615bc3f93b8f99bb1fa5be951751
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Feb 4 13:51:05 2025 -0800

    Fix concurrent issues caused by accessing request after calling Send (#12281)
    
    This can happen when items are added to the memory queue and processed
    by the batcher in the same time with reading the number of items from
    this code.
    
    Though our queue does not return error and still add the item unless the
    Context is cancelled, but likely because of a bug that does not work as
    expected, see
    https://github.com/open-telemetry/opentelemetry-collector/issues/12282
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
