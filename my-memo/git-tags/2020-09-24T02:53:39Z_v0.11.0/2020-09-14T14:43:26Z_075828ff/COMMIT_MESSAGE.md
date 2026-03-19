commit 075828ff0a6d26394887c4f07b3a20457471c608
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Mon Sep 14 10:43:26 2020 -0400

    Make pdata.LogsToOtlp and pdata.LogsFromOtlp impossible to call from outside this module (#1703)
    
    LogsToOtlp and LogsFromOtlp are intended to be used only by OTLP exporter (for which
    OTLP is the native data format) and fileexporter (for which we do want to output internal
    representation for debugging purposes).
    
    All other code is supposed to use public member functions of pdata.Logs struct.
    
    This changes makes it impossible to use LogsToOtlp and LogsFromOtlp outside this module
    by hiding them behind an intermediary struct that is declared in an internal package.
    
    This is necessary to prevent accidental use of LogsToOtlp and LogsFromOtlp and the OTLP
    data structs, which we prohibit to do since the OTLP data structs may change in the
    future.
