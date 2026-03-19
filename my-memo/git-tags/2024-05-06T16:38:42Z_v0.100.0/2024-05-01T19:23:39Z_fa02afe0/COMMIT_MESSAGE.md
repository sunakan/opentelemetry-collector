commit fa02afe0c78f55214d7a0426f9ad4151692184e1
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Wed May 1 15:23:39 2024 -0400

    [chore] Allow sometimes skipping deprecation process when adding variadic arguments (#10041)
    
    Call out that unnamed types, e.g. the function signature of an exported
    function, should not be relied upon by API consumers. In particular,
    updating a function to be variadic will break users who were depending
    on that function's signature.
    
    #### Link to tracking issue
    Helps
    https://github.com/open-telemetry/opentelemetry-collector/pull/9041
    
    Co-authored-by: Evan Bradley <evan-bradley@users.noreply.github.com>
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
