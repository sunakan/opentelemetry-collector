commit 5f60c7232abd6e1d3af94f8860c006f062d1c1f0
Author: Rayhan Hossain (Mukla.C) <hossain.rayhan@outlook.com>
Date:   Mon Nov 9 07:06:19 2020 -0800

    [exporter-helper] [resource_to_label_conversion] add helper function and expose exporter settings (#2060)
    
    * add helper function to convert resource attributes to labels
    
    Signed-off-by: Rayhan Hossain <hossain.rayhan@outlook.com>
    
    * add unit tests to improve coverage
    
    Signed-off-by: Rayhan Hossain <hossain.rayhan@outlook.com>
    
    * get a copy of incoming metrics and modify it
    
    Signed-off-by: Rayhan Hossain <hossain.rayhan@outlook.com>
    
    * update unit tests to make sure incoming pdata.Metrics are unchanged
    
    Signed-off-by: Rayhan Hossain <hossain.rayhan@outlook.com>
    
    * expose Resource_To_Label seeting option for all exporters
    
    Signed-off-by: Rayhan Hossain <hossain.rayhan@outlook.com>
    
    * use the helper function directly instead of seeting up a consumer
    
    * update README and address PR feedbacks
    
    Signed-off-by: Rayhan Hossain <hossain.rayhan@outlook.com>
    
    * add unit tests to improve coverage
    
    Signed-off-by: Rayhan Hossain <hossain.rayhan@outlook.com>
    
    * PR feedback: rename ResourceToLabel to ResourceToTelemetry
    
    Signed-off-by: Rayhan Hossain <hossain.rayhan@outlook.com>
    
    * refactoring: extract common code and create a simple func
    
    Signed-off-by: Rayhan Hossain <hossain.rayhan@outlook.com>
