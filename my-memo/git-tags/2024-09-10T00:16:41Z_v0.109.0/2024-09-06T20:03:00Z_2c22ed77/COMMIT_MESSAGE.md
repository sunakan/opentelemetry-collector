commit 2c22ed77c1f0d65355c51e2c57a9e0df32c6a944
Author: Eric L <100242256+splunkericl@users.noreply.github.com>
Date:   Fri Sep 6 13:03:00 2024 -0700

    return queue is full error if sized_channel is full (#11063)
    
    #### Description
    This change fixes a potential deadlock bug for persistent queue.
    
    There is a race condition in persistent queue that caused `used` in
    `sizedChannel` to become out of sync with `ch` len. This causes `Offer`
    to be deadlocked in specific race condition. For example:
    1. Multiple consumers are calling Consume
    2. Multiple producers are calling Offer to insert into the queue
      a. All elements are taken from consumers. ch is empty
    3. One consumer completes consume, calls onProcessingFinished
    a. Inside sizedChannel, syncSize is invoked, used is reset to 0 when
    other consumers are still waiting for lock to consume
    4. More Offer is called inserting elements -> used and ch len should
    equal
    5. As step 3a consumers completes, used is decreased -> used is lower
    than ch len
    a. More Offer is called inserting since used is below capacity. however,
    ch is full.
    b. goroutine calling offer is holding the mutex but can’t release it as
    ch is full.
    c. no consumer can acquire mutex to complete previous
    onProcessingFinished
    
    This change returns an error if channel is full instead of waiting for
    it to unblock.
    
    #### Link to tracking issue
    Fixes #
    https://github.com/open-telemetry/opentelemetry-collector/issues/11015
    
    #### Testing
    - Added concurrent test in persistent queue that can reproduce the
    problem(note: need to re-run it 100 times as the race condition is not
    consistent).
    - Added unit test for sizedChannel
    
    #### Documentation
    Added comment in the block explaining it
    
    ---------
    
    Co-authored-by: Dmitrii Anoshin <anoshindx@gmail.com>
