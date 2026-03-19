commit 402b80cabd2ac73f31df2ec0b8b5835e7865fc59
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Wed Oct 2 14:35:00 2019 -0400

    Add Capabilities to Processor and use for Fanout cloning decision (#374)
    
    This is part 1 of the task to introduce capabilities and declare
    processor's intent to mutate or not mutate consumed data for the
    purpose of optimizing pipeline data ownership.
    
    If a processor declares that they mutate data the pipeline
    that the processor is in will use cloning fan out connector.
    This is done only if the pipeline shares a receiver with another
    pipeline.
    
    This ensures that it is safe for processor modify the data (because
    pipelines work concurrently) and avoids cloning for pipelines that
    consume data from the same receiver but do not modify it.
    
    For more details see:
    https://github.com/open-telemetry/opentelemetry-collector/issues/372
