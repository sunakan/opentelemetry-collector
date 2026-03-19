commit d8e9970acd9537d9a8bda81af9cde85f9269901e
Author: Jay Camp <jay.r.camp@gmail.com>
Date:   Thu Mar 25 19:11:35 2021 -0400

    Updates for cloud semantic conventions (#2809)
    
    * Updates for cloud semantic conventions
    
    cloud.infrastructure_service -> cloud.platform
    cloud.zone -> cloud.availability_zone
    
    These changes were made in:
    
    https://github.com/open-telemetry/opentelemetry-specification/pull/1495
    https://github.com/open-telemetry/opentelemetry-specification/pull/1530
    
    Will make changes in contrib next.
    
    * fix oc conversion
