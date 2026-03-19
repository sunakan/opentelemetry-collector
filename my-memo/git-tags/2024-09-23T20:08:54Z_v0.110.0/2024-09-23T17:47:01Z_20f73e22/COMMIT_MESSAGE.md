commit 20f73e2294b5caae0bc897a7502cfd29f588fd85
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Mon Sep 23 11:47:01 2024 -0600

    [service] Start refactor of GetExporters (#11249)
    
    #### Description
    As part of
    https://github.com/open-telemetry/opentelemetry-collector/pull/11204 I
    left `host`'s implementation of `GetExporters` alone, thinking I didn't
    need to change a deprecated interface implementation.
    
    But `GetExporters` depends on `component.DataType`, so we won't be able
    to remove `component.DataType` unless `GetExporters` is updated to use
    `pipeline.Signal` instead.
    
    This PR deprecates the deprecated `GetExporters` interface with
    `GetExportersWithSignal`, which uses `pipeline.Signal`. Then we'll
    follow the process to rename `GetExportersWithSignal` back to
    `GetExporters`.
