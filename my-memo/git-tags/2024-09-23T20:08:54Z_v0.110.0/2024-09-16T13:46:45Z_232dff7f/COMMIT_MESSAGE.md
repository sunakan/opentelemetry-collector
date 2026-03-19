commit 232dff7f7c457ce3327d8087a860e623a98e9054
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Mon Sep 16 15:46:45 2024 +0200

    [otlpexporter] Document incidental breaking change on Config struct (#11178)
    
    #### Description
    
    My PR #11132 introduced a small breaking change in the API of
    `otlpexporter`, which I failed to notice at the time. This PR adds a
    release note about this.
    
    Specifically, the `TimeoutSettings` field in `otlpexporter.Config` was
    renamed to `TimeoutConfig` ([link to the new
    code](https://github.com/jade-guiton-dd/opentelemetry-collector/blob/543c4f510d3bbcd50e914f4e5d7f22c5fcbda92d/exporter/otlpexporter/config.go#L23)).
    As this is an embedded field, renaming the type of the field renamed the
    field itself.
    
    (Another option would have been to de-embed the field, and keep the old
    name. This has less potential for breakage, but would technically also
    be a breaking change.)
    
    #### Link to tracking issue
    Indirectly related to #6767
