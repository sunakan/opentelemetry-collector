commit 375a8590c543c78bf389d9a053042fd027d1a037
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Mon Nov 14 12:26:26 2022 -0800

    [configtelemetry] Update strings returned by `Level.[String|MarshalText]` (#6533)
    
    - All returned strings are capitalized.
      - "" is returned for integers that are out of Level enum range.
      - It also affects `Level.MarshalText` output, but it's not a problem because `UnmarshalText` method accepts strings in
      all cases, e.g. "normal", "Normal" and "NORMAL".
