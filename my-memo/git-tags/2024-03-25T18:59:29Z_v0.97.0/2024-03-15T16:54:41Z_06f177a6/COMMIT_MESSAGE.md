commit 06f177a66b26dcce74e15dd8983015b3a726f003
Author: Antoine Toulme <antoine@toulme.name>
Date:   Fri Mar 15 09:54:41 2024 -0700

    Revert "[chore] change the way we unmarshal the config in tests" (#9771)
    
    Reverts open-telemetry/opentelemetry-collector#9765
    
    We need to revert those changes as contrib has issues with them in
    isolation from #9750.
