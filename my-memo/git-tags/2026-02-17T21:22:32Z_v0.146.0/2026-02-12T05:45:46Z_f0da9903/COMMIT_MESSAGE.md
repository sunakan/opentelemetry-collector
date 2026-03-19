commit f0da990367b626286a933bc3b5faaac51c9fa33f
Author: Damien Mathieu <42@dmathieu.com>
Date:   Thu Feb 12 06:45:46 2026 +0100

    Handle profiles in generated component tests (#14434)
    
    We currently don't test profiles in mdatagen code generation.
    That's not really an issue so far, as we only have components that
    support other signals as well.
    
    But with
    https://github.com/open-telemetry/opentelemetry-ebpf-profiler/pull/1075,
    we try to import `consumertest` and never use it.
    
    ---------
    
    Co-authored-by: Dmitry Anoshin <anoshindx@gmail.com>
