commit 063261535fb65e436eac63c91cdbcbbb20d55d02
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Fri Jan 23 17:00:39 2026 -0800

    [chore] Add an RFC for Component Configuration Management Roadmap (#14433)
    
    Replaces
    https://github.com/open-telemetry/opentelemetry-collector/pull/13784
    
    This RFC proposes a roadmap for introducing configuration schemas to
    OpenTelemetry Collector components. It establishes a schema-first
    approach in which Go structs, JSON schemas, and documentation are all
    generated from a single YAML source of truth.
    
    This RFC is the result of discussions among contributors involved in
    this effort:
    - @atoulme
    - @evan-bradley
    - @iblancasa
    - @jkoronaAtCisco
    - @mx-psi
    - @pavolloffay
    
    Related Issues / PRs:
    -
    https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/42214
    - https://github.com/open-telemetry/opentelemetry-collector/issues/9769
    - https://github.com/open-telemetry/opentelemetry-collector/pull/14288
    -
    https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/27003
