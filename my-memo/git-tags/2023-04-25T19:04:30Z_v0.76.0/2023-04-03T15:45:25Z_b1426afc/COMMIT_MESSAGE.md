commit b1426afc1bccd45b0d171c27b3e05ec31937394e
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Mon Apr 3 11:45:25 2023 -0400

    Clarify that memory limiter refuses data, doesn't drop it (#7459)
    
    Contributes to https://github.com/open-telemetry/opentelemetry-collector/issues/1084
    
    - Clarify what the memory limiter does.
    - Set expectations from receivers, how they are supposed to react
      when the memory limiter refuses the data.
    - Add a test that demonstrates that memory limiter does not lose data
      if the receiver and exporter behave according to the contract.
    
    All receivers must adhere to this contract. See for example
    an issue opened against filelog receiver:
    https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/20511
    
    Note that there are no functional changes to the memory limiter.
    
    Future work: one additional thing we can do is implement a backoff
    logic in the memory limiter. When in memory limited mode the processor
    can introduce pauses before it returns from the ConsumeLogs/Traces/Metrics
    call. This will allow to slow down the inflow of data into the Collector
    and give time for the pipeline to clear and memory usage to return to the
    normal. This needs to be explored further.
