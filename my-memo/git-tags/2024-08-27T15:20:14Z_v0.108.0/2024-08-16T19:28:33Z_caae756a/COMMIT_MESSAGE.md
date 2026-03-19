commit caae756a09404438ac339de538daac4751e3246c
Author: Munir Abdinur <munir.abdinur@datadoghq.com>
Date:   Fri Aug 16 15:28:33 2024 -0400

    chore(builder): Update readme (#10867)
    
    #### Description
    
    Following the tldr section in the builder
    [README](https://github.com/open-telemetry/opentelemetry-collector/tree/main/cmd/builder#tldr)
    raises the following errors:
    
    With v0.99.0:
    
    ```
    Error: mismatch in go.mod and builder configuration versions: core collector version calculated by component dependencies "v0.107.0" does not match configured version "v0.106.1". Use --skip-strict-versioning to temporarily disable this check. This flag will be removed in a future minor version
    ```
    
    With latest:
    ```
    Error: invalid 'confmap.ResolverSettings' configuration: DefaultScheme not found in providers list
    2024/08/13 06:55:50 collector server run finished with error: invalid 'confmap.ResolverSettings' configuration: DefaultScheme not found in providers list
    ```
    
    Removing the `fileprovider` resolves the confmap failure on latest. This
    PR removes the `fileprovider` from the `otelcol-custom` binary. An
    alternatively we could update the `otelcol.yaml` to include the expected
    scheme.
