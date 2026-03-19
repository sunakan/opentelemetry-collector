commit 9ab25f6f66ae76aaef69acca4752dee2536b4e65
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Mon Jun 9 10:43:33 2025 +0000

    [confmap] Return nil map if original map was nil (#13161)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Amends `ToStringMap` so that it returns `map[string]any(nil)` if the map
    used to create this `Conf` was nil. Currently it returns an empty map.
    
    I consider this a bug since, while not explicitly undocumented, I would
    expect the following two properties to be true, and they were not before
    this change:
    1. For any map `m` without `expandedValue`s,
    `NewFromStringMap(m).ToStringMap() == m`
    2. For any map `m` without `expandedValue`s and any `path` referencing
    an existing key in `m` with a `map[string]any` value,
    `NewFromStringMap(m).Sub(path) == m[path[0]][path[1]][...][path[N]]`
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    
    I need this to be able to distinguish between
    
    ```
    foo:
       bar:
    ```
    
    and
    
    ```
    foo:
      bar: {}
    ```
    
    which currently have different behaviors when mapping to pointers.
    
    The goal is to be able to do #13168
