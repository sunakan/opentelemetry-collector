commit deffd489200246fd3ca8650d5ce0269437820fb9
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu Jun 1 19:49:53 2023 -0400

    Add receiver/consumer contract test helper (#7516)
    
    - Added a CheckConsumeContract() helper func that can be used to test the contract that
      receivers are expected to maintain for Consume() calls.
    - Added an example usage of CheckConsumeContract() helper.
