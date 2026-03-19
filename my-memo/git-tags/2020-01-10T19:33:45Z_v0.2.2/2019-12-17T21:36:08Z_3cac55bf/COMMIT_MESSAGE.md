commit 3cac55bf869fe5015a485d609e0ee5bbe495404b
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Dec 17 16:36:08 2019 -0500

    Add ability to specify resource limits in scenarios (#470)
    
    - Changed TestCase to use ResourceSpec to specify resource limits.
    - Changed Scenario10kItemsPerSecond to accept and use ResourceSpec.
    - Removed SetExpectedMaxCPU and SetExpectedMaxRAM functions, using
      SetResourceLimits instead. This makes the resource limit specifications
      more uniform across the testbed.
    - Adjusted resource limits of existing tests to be 1.2x of what they
      consume in Travis CI. This gives enough room for measurement instability
      in CI and still allows catching big regressions.
