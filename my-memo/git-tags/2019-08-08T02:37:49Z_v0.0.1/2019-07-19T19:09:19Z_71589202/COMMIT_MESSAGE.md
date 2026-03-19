commit 71589202609d7e787244076b631b45e219101867
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Fri Jul 19 15:09:19 2019 -0400

    Honor "disabled" config flag (#181)
    
    We previously had "enabled" config flag which was not honored.
    This now implements "disabled" config flag which is honored.
    
    We decided to use "disabled" instead of "enabled" since it is
    more common to have enabled items than disabled items in the config
    and this reduces litter in the config file.
    
    Github issue: https://github.com/open-telemetry/opentelemetry-service/issues/113
