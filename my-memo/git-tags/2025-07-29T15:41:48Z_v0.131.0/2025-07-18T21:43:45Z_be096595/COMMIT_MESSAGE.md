commit be09659515644530e7cea859df89be82f0abcc59
Author: Marko Bakovic <delta003@users.noreply.github.com>
Date:   Fri Jul 18 22:43:45 2025 +0100

    Fallback to content type in error handler (#13414)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    When the request lacks Content-Type, for whatever reason, the response
    is 500 `{"code": 13, "message": "failed to marshal error message"}`. In
    general, this shouldn't happen, but anything hitting a collector server
    wrongly results in 500 on a collector, which seems wrong (it's a client
    error).
    
    This is simple to repro:
    `curl -X GET localhost:4318` with any auth extension returns 500. This
    is because auth extension returns an error that should propagate as 401,
    but because of error handling results in 500.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Co-authored-by: Yang Song <songy23@users.noreply.github.com>
