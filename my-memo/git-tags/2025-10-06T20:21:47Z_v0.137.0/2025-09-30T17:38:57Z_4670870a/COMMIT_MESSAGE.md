commit 4670870afdcd6065b11a864a8642cb8ca4790c54
Author: Nico Pazos <32206519+npazosmendez@users.noreply.github.com>
Date:   Tue Sep 30 14:38:57 2025 -0300

    Fix http config MaxIdleConnsPerHost docstring (#13903)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This just fixes a docstring in the code, that currently says
    `MaxIdleConnsPerHost` defaults to "unlimited".
    
    `MaxIdleConnsPerHost` is copied as is
    
    https://github.com/open-telemetry/opentelemetry-collector/blob/a0f382def0ebbbd66ef2cef3ac759f6f13c33aae/config/confighttp/client.go#L174
    
    and a zero value defaults to `DefaultMaxIdleConnsPerHost`, see stdlib:
    https://github.com/golang/go/blob/371c1d2fcb48fa79ac30812231ecef0e26f539dc/src/net/http/transport.go#L209-L212
    
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
     n/a
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
     n/a
    <!--Describe the documentation added.-->
    #### Documentation
     n/a
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Signed-off-by: Nicolás Pazos <npazosmendez@gmail.com>
    Co-authored-by: Damien Mathieu <42@dmathieu.com>
