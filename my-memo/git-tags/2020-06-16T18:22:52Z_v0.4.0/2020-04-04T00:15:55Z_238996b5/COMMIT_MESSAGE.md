commit 238996b51ed537953075496464c292abb5285de4
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Fri Apr 3 17:15:55 2020 -0700

    Remove Context() from component.Host interface (#777)
    
    It doesn't make sense to have this method on `component.Host`. Currently, the only usages are in `Start` methods, later we can add it to `Start` if we want to support timeout or cancellation. See https://github.com/open-telemetry/opentelemetry-collector/pull/748#discussion_r402690039
