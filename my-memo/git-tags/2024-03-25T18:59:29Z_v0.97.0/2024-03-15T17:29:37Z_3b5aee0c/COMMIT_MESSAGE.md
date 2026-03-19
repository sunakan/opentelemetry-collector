commit 3b5aee0c7a168f7ba57a87e864b4f65d794eef8b
Author: Antoine Toulme <antoine@toulme.name>
Date:   Fri Mar 15 10:29:37 2024 -0700

    Revert "[chore] Refactor mdatagen unmarshaling to use less custom Unmarshalers" (#9773)
    
    Reverts open-telemetry/opentelemetry-collector#9760
    
    Trying to make contrib happy. We will be back with a unit test covering
    contrib's usage of mdatagen.
