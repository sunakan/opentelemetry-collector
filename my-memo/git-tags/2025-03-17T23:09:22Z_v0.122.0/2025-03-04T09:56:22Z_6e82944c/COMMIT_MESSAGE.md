commit 6e82944c1a3647c751e0c459d909447f920abc4c
Author: Vihas Makwana <121151420+VihasMakwana@users.noreply.github.com>
Date:   Tue Mar 4 15:26:22 2025 +0530

    [confmap] - new feature flag for append merging strategy (#12097)
    
    Koanf's default merging strategy currently overrides static values such
    as slices, numbers, and strings. However, lists of components should be
    treated as a special case. This pull request introduces a new command
    line option to allow for merging lists instead of discarding the
    existing ones.
    
    With this new merging strategy:
    - All the lists are merged rather than replaced.
    - The merging logic is name-aware, meaning that if components with the
    same name appear in both lists, they will only appear once in the final
    merged list.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Related issues:
    - https://github.com/open-telemetry/opentelemetry-collector/issues/8754
    - https://github.com/open-telemetry/opentelemetry-collector/issues/8394
    - https://github.com/open-telemetry/opentelemetry-collector/issues/10370
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    - Added
    
    <!--Describe the documentation added.-->
    #### Documentation
    - Added under readme.
    
    
    ##### Example
    Consider the following configs,
    
    ```yaml
    # main.yaml
    receivers:
      otlp/in:
    processors:
      batch:
    exporters:
      otlp/out:
    extensions:
      file_storage:
    
    service:
      pipelines:
        traces:
          receivers: [ otlp/in ]
          processors: [ batch ]
          exporters: [ otlp/out ]
      extensions: [ file_storage ]
    ```
    
    
    ```yaml
    # extra_extension.yaml
    extensions:
      healthcheckv2:
    
    service:
      extensions: [ healthcheckv2 ]
    ```
    
    If you run the collector with following command,
    ```
    otelcol --config=main.yaml --config=extra_extension.yaml --feature-gates=-confmap.enableMergeAppendOption
    ```
    then the final configuration after config resolution will look like
    following:
    
    ```yaml
    # main.yaml
    receivers:
      otlp/in:
    processors:
      batch:
    exporters:
      otlp/out:
    extensions:
      file_storage:
      healthcheckv2:
    
    service:
      pipelines:
        traces:
          receivers: [ otlp/in ]
          processors: [ batch ]
          exporters: [ otlp/out ]
      extensions: [ file_storage, healthcheckv2 ]
    ```
    
    For backward compatibly, the default behaviour is **not** to merge
    lists. Users who want to explicitly merge lists can enable the command
    line option.
    
    Note: I’d appreciate your feedback on this 🙏
