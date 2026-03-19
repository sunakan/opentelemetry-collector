commit aaa0eb565c37b79671be8239a7689ea3fcd97cd4
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Oct 26 13:07:09 2021 -0400

    Make sure otlphttp exporter tests include TraceID and SpanID (#4268)
    
    Related to https://github.com/open-telemetry/opentelemetry-collector/issues/4221
    
    There was a report that TraceID and SpanID are correupted by otlphttp exporter.
    I added to TraceID and SpanID to try to reproduce the bug. The bug is not reproduced
    but keeping these in the test is useful.
