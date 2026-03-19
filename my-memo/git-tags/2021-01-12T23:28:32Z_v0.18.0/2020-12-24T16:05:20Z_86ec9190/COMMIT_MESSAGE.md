commit 86ec91902f7ebef51c7e7a0a8a6b1f30cf97a7c1
Author: Pablo Collins <pcollins@splunk.com>
Date:   Thu Dec 24 11:05:20 2020 -0500

    Expose component configuration schemas (#2210)
    
    * POC/Proposal for exposing configuration schemas
    
    Issue: https://github.com/open-telemetry/opentelemetry-collector/issues/1995
    
    This change proposes a way to generate metadata for the configuration structs
    used by Collector components. The generated metadata could be used for
    documentation and tooling.
    
    The way it works is, given a component, its configuration struct is found, and
    its field names, types, tags, default values, and comments are retrieved and
    put into a struct. This is done recursively, but respecting "squashed" fields,
    and any fields omitted with a "-" tag. The final struct is marshaled to a yaml
    file in the directory of the configuration type.
    
    Also included are a simple command line interface and an example metadata
    file. The CLI lets users create a metadata file for either a given component or
    for all registered components.
    
    Tests have not been included as this change is meant to be exploratory.
    
    * Use a map rather than an array for fields
    
    * Expose component configuration schemas
    
    Issue: https://github.com/open-telemetry/opentelemetry-collector/issues/1995
    
    This change adds a command line utility to generate schema files for each of
    the configuration structs used by Collector components. The intent is for these
    generated files to be used by documentation utilities and tooling.
    
    The way it works is, given a component, its default configuration struct is
    retrieved and introspected, producing field names, types, default values, and
    comments. Those are recursively put into a graph of structs, respecting
    "squashed" fields and any fields omitted with a "-" tag. Finally, the struct is
    marshaled to a yaml file in the directory of the configuration type.
    
    The CLI lets users create a metadata file for either one component or for all
    registered components.
    
    For reference, preliminary feedback was gathered here https://github.com/open-telemetry/opentelemetry-collector/pull/2169
    
    * Create a local go module, don't panic on mapstructure errors
    
    * Move code to internal, exclude cfgschema from Makefile
    
    * Increase test coverage
    
    * Increase test coverage
    
    * Fix lint
    
    * Reorg so schemagen can be used from contrib
    
    * Don't export stuff that no longer needs to be exported
