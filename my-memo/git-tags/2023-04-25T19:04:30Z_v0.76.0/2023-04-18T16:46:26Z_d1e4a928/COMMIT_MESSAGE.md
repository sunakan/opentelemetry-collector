commit d1e4a928e779ef10e81523484f0ff839f20eebd7
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Apr 18 12:46:26 2023 -0400

    Clarify checkpointing order for receivers (#7545)
    
    This expands the delivery guarantees introduced for network-based receivers to receivers
    that use checkpointing.
    
    The purpose of the requirement is the same: to prevent data losses. See previous PR:
    https://github.com/open-telemetry/opentelemetry-collector/pull/4262
