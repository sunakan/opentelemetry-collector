commit bfe3b3152d5b4ce39c271d9e6347ae70511b9180
Author: Ankit Patel <8731662+ankitpatel96@users.noreply.github.com>
Date:   Thu May 9 16:27:55 2024 -0400

    ExporterHelper tests - switch to DataType instead of Type (#10127)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    `newBaseExporter` needs a `DataType` - up until now we've been passing
    in a `Type`. In preparation of splitting `DataType` and `Type`, pass in
    a real `DataType`.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/9429
    
    
    
    In preparation for
    https://github.com/open-telemetry/opentelemetry-collector/pull/10069
