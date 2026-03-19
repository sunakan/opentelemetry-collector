commit f0c7a8b5077040e9946020ed3496fe8d262009fd
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Tue Jan 28 10:20:06 2025 -0500

    [chore] Clarify allowed changes to struct field tags in VERSIONING.md (#12190)
    
    #### Description
    
    Add wording that allows us to update struct field tags if changes to the
    tags doesn't change the values of fields in the struct during
    serialization/deserialization.
    
    This will allow us to add `omitempty` to fields on structs in stable
    packages. Adding this tag will cause fields which have zero values to
    not be written when marshaling into YAML, but there is no functional
    difference since missing fields during unmarshaling simply leaves a
    struct field with a zero value.
    
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/12191.
