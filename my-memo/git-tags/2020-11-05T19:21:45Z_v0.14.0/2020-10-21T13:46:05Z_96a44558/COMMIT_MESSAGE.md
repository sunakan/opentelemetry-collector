commit 96a445583adb9687f0e4c08c7125ca552d0083a7
Author: Pablo Collins <pablo.collins@gmail.com>
Date:   Wed Oct 21 09:46:05 2020 -0400

    Add expr pdata.Metric filtering support to filterprocessor 1/2 (#1940)
    
    This is the first of two PRs to add support for filtering `pdata.Metric`s by arbitrary [expr](https://github.com/antonmedv/expr) expressions. The capabilities of the existing `filterprocessor`, which currently filters just metric _names_ by matching against regexes or strings, will be expanded to allow for filtering `pdata.Metric` _structs_ based on expressions such as `MetricName == "foo" && Label("mylabel") == "bar"`.
    
    This change adds support for `match_type: expr` while maintaining backward compatibility with existing filterprocessor config yamls. Because the expr filter will be the first one that checks for matches against entire `pdata.Metric`s, rather than just their names, some minor changes are required to the structure of the configs that the filterprocessor uses.
    
    For reference, a current filterprocessor config look might like the following:
    
    ```
    processors:
      filter/1:
        metrics:
          exclude:
            match_type: regexp
            metric_names:
            - prefix/.*
    ```
    
    After the second PR, the intent is for another possible config to be:
    
    ```
    processors:
      filter/1:
        metrics:
          exclude:
            match_type: expr
            expressions:
            - "MetricName == 'foo' && Label('mylabel') == 'bar'"
    ```
    
    This PR just adds support for `match_type: expr`.
