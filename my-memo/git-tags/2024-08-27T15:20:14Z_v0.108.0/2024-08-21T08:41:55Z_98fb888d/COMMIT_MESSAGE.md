commit 98fb888dfe6dc282a3d8f67ebd131294fcacc1f8
Author: Matthew Wear <matthew.wear@gmail.com>
Date:   Wed Aug 21 01:41:55 2024 -0700

    [component] Make InstanceID immutable (#10495)
    
    #### Description
    This PR makes component.InstanceID immutable. Previously it was a struct
    with all fields exported. Technically this is a breaking change, but the
    only thing using the InstanceID is the in-progress
    healthcheckv2extension.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #10494
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    units
    
    <!--Describe the documentation added.-->
    #### Documentation
    code comments
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Co-authored-by: Antoine Toulme <antoine@toulme.name>
    Co-authored-by: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
