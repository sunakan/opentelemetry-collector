commit a85b37df73b0d127e2bded76ea72280aec4cecac
Author: splunkertimn <109310003+timannguyen@users.noreply.github.com>
Date:   Tue Jan 23 13:44:46 2024 -0500

    [extension/memorylimiter] add memory limiter extension, a copy of memorylimiter processor (#8964)
    
    **Description:**
    
    Following
    https://github.com/open-telemetry/opentelemetry-collector/issues/8632,
    this change introduces memory limiter as an extension. This allows
    us to place the component to reject incoming connections due to limited
    memory, providing better protection from running out of memory.
    
    missing feature: receiver fairness. issue where a receiver hogs all the
    resource can happen.
    
    **Link to tracking Issue:** <Issue number if applicable>
     https://github.com/open-telemetry/opentelemetry-collector/issues/8632
    
    ---------
    
    Co-authored-by: Dmitry Anoshin <anoshindx@gmail.com>
