commit d6d07c8a2ad757b57b0fe0ed0bbbbd382ea1a70b
Author: Vihas Makwana <121151420+VihasMakwana@users.noreply.github.com>
Date:   Thu Feb 20 21:16:37 2025 +0530

    [service]: add new subcommand to examine the initial configuration (#11775)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    **_Why is this useful?_**
    - Users might want to examine the config if they face any errors at boot
    time. This subcommand prints the configuration on stdout after merging
    and resolving from all the `--config` sources.
    - The command prints the configuration even if it's invalid. This can
    help user to track down the faulty piece of config.
    
    **_Usage_**
    
    ```bash
    ./otelcorecol examine --config=file:file.yaml --config=http://remote:8080/config --config=file:file2.yaml
    ```
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes
    #https://github.com/open-telemetry/opentelemetry-collector/issues/11479
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Added unit test cases.
    
    <!--Describe the documentation added.-->
    #### Documentation
    Updated readme.
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Co-authored-by: Mauri de Souza Meneguzzo <mauri870@gmail.com>
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
    Co-authored-by: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
