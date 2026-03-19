commit 3798f0c2bf1ae724968ceddf754a2ac5a7255371
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Tue Feb 10 08:32:09 2026 -0800

    [chore] Add conflict resolution guidelines for semconv feature gates RFC (#14538)
    
    Adds guidelines for handling conflicts when v0 and v1 semantic
    conventions share the same metric name but differ in attributes or
    metric types. This clarifies the expected behavior during
    double-publishing to prevent emitting invalid OpenTelemetry datasets.
    
    This was discussed and agreed upon during the System SemConv call on Feb
    5. The resolution strategy ensures that backends receive valid,
    unambiguous metric data during the migration period.
    
    cc @braydonk @ChrsMark @mx-psi
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
