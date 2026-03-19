commit f64f96032c6556e21a9a2317e80a7b752f49a579
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu Jul 16 18:37:29 2020 -0400

    Update OTLP to latest version (#1384)
    
    - Removed the draft logsproto and now using the logs Protobufs from
      official OTLP repo. The rest of the changes are forced by this.
    - Added InstrumentationLibraryLogs and change the type of LogRecord.Body
      to AnyValue.
    - Updated fileexporter and logexporter to use the new log data type.
