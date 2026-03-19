commit 5f1144308bf2ec4f87eb921966a0e08f4f3ab78d
Author: Fred Thomsen <fred.thomsen@sciencelogic.com>
Date:   Fri Jul 21 16:50:12 2023 -0400

    Add path prefix for otlp http receiver (#7570)
    
    Supports multiple otlp http receivers running behind a reverse
    proxy/ingress.
    
    Fixes #7511
    
    Updated existing tests to account for new parameter.
