commit d3d5e060805cc4ec0c114b7773ef5450c1cc8ffe
Author: Andrew Wilkins <axw@elastic.co>
Date:   Fri Aug 16 16:45:10 2024 +0800

    [chore] Clarify config removal in CONTRIBUTING.md (#10582)
    
    #### Description
    
    Clarify that deprecated config options are expected to remain for at
    least 6 months after deprecation.
    
    "MUST NOT" makes it clear for readers that this is something that
    definitely should not be done, vs. something that's discretionary.
    
    See also
    https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/33776#issuecomment-2217491855
