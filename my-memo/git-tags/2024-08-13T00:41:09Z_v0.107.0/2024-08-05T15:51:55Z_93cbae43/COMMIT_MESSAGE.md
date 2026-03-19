commit 93cbae436ae61b832279dbbb18a0d99214b7d305
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Mon Aug 5 17:51:55 2024 +0200

    [confmap] Allow using any type as a string (#10800)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Allows any type to be used as a string if the target field is a string
    or the value is expanded in inline position. Inspired by #10794. This is
    not a breaking change (previously we would return an error for these).
    
    Some things that you can do after this PR that you couldn't do before
    it:
    
    1. Set `HOST` to `[2001:db8::8a2e:370:7334]` and use it in an endpoint:
    ```yaml
    exporters:
      otlp:
        endpoint: http://${env:HOST}/api/v1/traces
    ```
    
    2. Pass really big numbers as strings (e.g. `10000000000000000000`)
    
    3. Pass `null` as a string.
    
    <details>
    <summary>Types that can be returned by our current YAML parser</summary>
    
    Our current way of using the YAML parser has these types: `string`,
    `nil`, `int`, `uint64`, `float64`, `map[any]any`, `map[string]any`,
    `[]any`.
    
    There is no documentation for this, but the following fuzzing test did
    not find any failing cases after 20 minutes of continous run:
    
    ```go
    package main
    
    import (
            "testing"
            "gopkg.in/yaml.v3"
    )
    
    func FuzzTest(f *testing.F) {
            f.Fuzz(func(t *testing.T, data []byte){
                    var b any
                    err := yaml.Unmarshal([]byte(data), &b)
                    if err != nil {
                            return
                    }
    
                    switch b.(type) {
                            case string, nil, int, uint64, float64, map[any]any, map[string]any, []any:
                                    return
                            default:
                              t.Errorf("Unexpected type %T", b)
                    }
            })
    }
    
    ```
    </details>
