commit 4f9fc6bb2d13e7bab29028cb725ef02ae3764325
Author: Oussama Ben Ghorbel <d.oussamabenghorbel@gmail.com>
Date:   Thu Mar 13 14:09:11 2025 +0100

    [chore] Support connector in metrics.go.tmpl NewMetricsBuilder (#12403)
    
    #### Description
    
    I discovered this issue while trying to upgrade the opentelemetry
    collector from v0.111.0 to v0.119.0 that was released two weeks ago. To
    reproduce please take a look at the issue below.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #12402
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    Run `make generate` on a processor or connector component
