commit 70f86c6bfc17d003d23dd9e3568728841a1181f7
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Aug 30 18:03:18 2021 -0700

    Remove export metrics logic from copied BoundedQueue (#3943)
    
    This functionality is not used and brings unnecessary dependencies, we will use Otel anyway.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
