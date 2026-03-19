commit 0747a8305a08390e9eb7f8b6e2baa5143fc18c1d
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu Jun 13 16:10:57 2019 -0400

    Build exporters based on new configuration (#569)
    
    - Introduced a new unisvc binary and make target. Unisvc is
      planned to be the implementation of the unified agent and collector
      that uses the new configuration format.
    
    - Refactored existing Application.execute() code to make it more
      readable and also reusable.
      The functionality is not changed. Reviews: please check this carefully!
    
    - Introduced new Application.executeUnified() function that will call
      all new agent/collector execution logic that is different from
      old logic.
      Application.executeUnified() is currently partial implementation,
      which only builds the exporters. I plan to add building of processor
      pipelines and receivers in future PRs.
    
    - Introduced ExportersBuilder which builds runtime exporters based
      on provided configuration.
    
    - Added ability for App telemetry shutdown. This is required to be able to
      run multiple tests that involve App start and shutdown. Previously
      there was only one test - TestApplication_Start - and it was not
      correctly cleaning up telemetry resources at the end, making impossible
      to add more tests against App.
