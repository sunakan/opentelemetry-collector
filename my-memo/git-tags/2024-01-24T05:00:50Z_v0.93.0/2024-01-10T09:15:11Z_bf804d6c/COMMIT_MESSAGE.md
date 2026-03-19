commit bf804d6c4ecc287f68ff2e874558b07e863bc18b
Author: Antoine Toulme <antoine@lunar-ocean.com>
Date:   Wed Jan 10 01:15:11 2024 -0800

    [configopaque] configopaque.String implements fmt.Stringer (#9214)
    
    **Description:**
    configopaque.String implements `fmt.Stringer`, outputting [REDACTED]
    when used as `fmt.Sprintf("%s", opaquestring)`
    
    **Link to tracking Issue:**
    Fixes #9213
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
