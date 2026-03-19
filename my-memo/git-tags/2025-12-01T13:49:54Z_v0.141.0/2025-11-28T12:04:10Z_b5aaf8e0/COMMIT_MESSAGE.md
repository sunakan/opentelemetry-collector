commit b5aaf8e0338748e280a9e429233434ce5c23017a
Author: Israel Blancas <iblancasa@gmail.com>
Date:   Fri Nov 28 13:04:10 2025 +0100

    Introduce MergeTo method for profiles (#14091)
    
    Continuation
    https://github.com/open-telemetry/opentelemetry-collector/issues/13106
    
    * Added `Profiles.MergeTo` implementation that merges one profile
    message into another while reconciling their dictionaries and appending
    resource profiles.
    * Added comprehensive unit tests covering both the successful merge path
    and error propagation when dictionary switching fails.
    
    ---------
    
    Signed-off-by: Israel Blancas <iblancasa@gmail.com>
