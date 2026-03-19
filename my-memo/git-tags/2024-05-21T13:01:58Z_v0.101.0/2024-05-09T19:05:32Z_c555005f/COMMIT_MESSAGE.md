commit c555005fcc80cf1be1321c664e9b1faf1a47f8cb
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Thu May 9 12:05:32 2024 -0700

    [mdatagen] only generate telemetry as needed (#10129)
    
    This prevent unnecessary files from being generated if metadata.yaml
    doesn't include any internal telemetry for a component.
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
