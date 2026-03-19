commit 0a58f78070bab73373615311e3247af206737e7c
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Wed May 13 16:58:51 2020 -0400

    Add factories and component types to support logs data type (#959)
    
    We are planning on experimenting with logs data type in the Collector.
    This commit introduces factories and components types for logs and
    implements pipeline building for logs.
    
    The data.Log struct is for now empty. We need to wait for OTLP protocol
    to define the log data format and we will use it in data.Log.
    
    data.Log is in internal package since logs support is experimental
    and is not intended for public usage yet.
    
    Resolves https://github.com/open-telemetry/opentelemetry-collector/issues/957
