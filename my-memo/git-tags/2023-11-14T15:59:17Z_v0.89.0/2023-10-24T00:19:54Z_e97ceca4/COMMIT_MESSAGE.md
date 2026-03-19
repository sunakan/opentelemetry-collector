commit e97ceca47f9eacf50688a5b2e40c0ad22261579b
Author: Olga <86965961+omrozowicz-splunk@users.noreply.github.com>
Date:   Tue Oct 24 02:19:54 2023 +0200

     [chore] add test helper to verify exporter behavior on errors (#8143)
    
    **Description:** Adding a test helper to test exporter behaviour on
    errors.
    
    **Link to tracking Issue:**
    https://github.com/open-telemetry/opentelemetry-collector/issues/7479
    Will also fix:
    https://github.com/open-telemetry/opentelemetry-collector/issues/7481
    
    It is created based on the exporter receiver test:
    https://github.com/open-telemetry/opentelemetry-collector/pull/7516
    The exporter targets `mockReceiver` as an endpoint.
    
    The test cases covered here are:
    1. ConsumeLogs/Traces/Metrics call succeeds at the first try
    2. ConsumeLogs/Traces/Metrics call fails once with non-permanent error,
    then succeeds on one of the next tries
    3. ConsumeLogs/Traces/Metrics call fails once with permanent error and
    the data is not retried
    4. ConsumeLogs/Traces/Metrics call fails once with permanent error or
    permanent error (then the test pass requirement is calculated based on
    number of errors per kind/successfully delivered data/total number of
    data to be delivered)
    
    ---------
    
    Co-authored-by: Dmitry Anoshin <anoshindx@gmail.com>
