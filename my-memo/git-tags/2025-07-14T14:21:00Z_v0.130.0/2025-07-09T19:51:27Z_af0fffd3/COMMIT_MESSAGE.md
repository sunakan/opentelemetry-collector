commit af0fffd3615ba12cb2f9de27a404cdfc49404da8
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Wed Jul 9 12:51:27 2025 -0700

    [exporterhelper] Fix exporter.PersistRequestContext feature gate (#13359)
    
    It was ignored before because the PersistRequestContextOnRead and
    PersistRequestContextOnWrite variables were initialized before the
    feature gate was set from the command line arguments.
    
    Resolves
    https://github.com/open-telemetry/opentelemetry-collector/issues/13342
