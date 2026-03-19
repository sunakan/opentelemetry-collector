commit b9ff1bc54c992bc76cc9ecb0a7ee1f0f591f6d23
Author: igorpeshansky <7594381+igorpeshansky@users.noreply.github.com>
Date:   Mon Dec 2 18:11:42 2024 -0500

    [otelcol] Tell all loggers to encode timestamps in ISO8601. (#10543)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    OTel collector log messages in Windows are currently displayed in
    scientific notation, e.g.:
    ```
    1.7194132367192364e+09  error   scraperhelper/scrapercontroller.go:197  Error scraping metrics  …
    ```
    This fix will cause the log messages to use ISO8601 timestamps instead.
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Manual testing.
    
    <!--Describe the documentation added.-->
    #### Documentation
    The previous behavior was undocumented, so no documentation changes
    needed.
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Co-authored-by: Daniel Jaglowski <jaglows3@gmail.com>
