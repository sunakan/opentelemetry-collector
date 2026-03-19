commit 9047c0e373f97f46037256908ee86e21a25c7241
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Wed Jan 24 13:33:50 2024 +0100

    [receiver/otlp, internal, featuregate] Add featuregate to switch to localhost defaults for server-like components (#8622)
    
    **Description:**
    
    - Define `component.UseLocalHostAsDefaultHost` in the
    `internal/localhostgate` package.
    - Define `featuregate.ErrIsAlreadyRegistered` error, returned by
    `Register` when a gate is already registered.
    - Adds support for the localhost gate on the OTLP receiver.
    
    This PR does not remove the current warning in any way, we can remove
    this separately.
    
    **Link to tracking Issue:** Updates #8510
    
    **Testing:** Adds unit tests
    
    **Documentation:** Document on OTLP receiver template and add related
    logging.
