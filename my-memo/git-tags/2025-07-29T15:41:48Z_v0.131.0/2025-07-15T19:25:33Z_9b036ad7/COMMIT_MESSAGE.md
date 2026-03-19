commit 9b036ad72fbe1bdb18388e2a9d01b75d5eb25490
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Jul 15 22:25:33 2025 +0300

    Extract pdatagen as standalone tool/package (#13398)
    
    Updates
    https://github.com/open-telemetry/opentelemetry-collector/issues/12747
    
    Removes one source of DCE disable which is the usage of text/template.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
