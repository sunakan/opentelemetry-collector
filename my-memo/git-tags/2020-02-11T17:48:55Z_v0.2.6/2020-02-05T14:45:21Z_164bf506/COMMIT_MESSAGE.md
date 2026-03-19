commit 164bf506877d1e58ecfd67f6ca8b491e8fd95c18
Author: Ian Quick <ian.quick@gmail.com>
Date:   Wed Feb 5 09:45:21 2020 -0500

    Record dropped spans when zero (#528)
    
    Change "batches_dropped" to a .Sum(), and emit 0s for them on processor start.
    
    Motivation:
    Currently with batches_dropped being a .Count() we end up with a missing metric for bad_batches until one occurs. This makes discovering the "error" metrics I want to watch kind of annoying as I can't just look in the default prom metric list and choose what I want to dashboard / alert on.
    
    I also think that for things we KNOW are 0, we should be emitting a 0. If we send 8000 batches, the bad_batches shouldn't be absent it should be 0. I do think that view.Count()'s should be initialized to 0 as well ( but I may not know the whole story there. )
    
    I can add these to the other processors if we think this is a good idea. For now I just hoped the metric name is correct in my current production dashboards.
    
    Testing:
    I added some happy path metric tests to the processor. I can figure out a way to add bad path tests, it will just require a bunch of plumbing I think.
    
    Documentation: I think the metrics as a whole need better documentation, for example I "fail_sends" in the exporter wasn't actually an error. Maybe a distinction between data loss events or not?
