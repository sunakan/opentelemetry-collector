commit 418ae40b6c3081cf7eb4ccc5d5c0b820cddc2533
Author: Daniel Jaglowski <jaglows3@gmail.com>
Date:   Mon Apr 11 09:59:13 2022 -0400

    Remove deprecated log name from text marshaler (#5172)
    
    LogRecord.Name has been deprecated, but there is still a reference to it in the logging exporter. This change removes the name from the logging exporter output.
