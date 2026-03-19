commit fce1d4619dd65e1c53c0b83ccc154f5063ac8612
Author: Antoine Toulme <atoulme@splunk.com>
Date:   Tue Aug 20 01:48:58 2024 -0700

    [chore] rely on strict input parsing to error out on invalid unsigned  int values (#10609)
    
    This removes a hook for confmap that was used to handle invalid uint
    values, now that
    https://github.com/open-telemetry/opentelemetry-collector/issues/9532 is
    fixed.
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
