commit 05cdcf441a416c0990c849210cc31c2b98ddd6ff
Author: Antoine Toulme <antoine@lunar-ocean.com>
Date:   Mon Jul 15 20:50:30 2024 -0700

    [chore] update globalgates version (#10619)
    
    Update the go.mod dependency version of internal/globalgates to a commit
    and date where the package exists, as multimod and tidy gets confused
    when running `make update-otel` in contrib otherwise.
