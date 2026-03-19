commit 4bb261b7b16da8bb578d5ce787aade8504eb84f9
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Nov 10 10:33:30 2021 -0800

    Remove support to expand env variables in default configs (#4366)
    
    Proven in https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/6122 that this can be done in the component itself, and no need for this complicated logic.
    No other usage in core/contrib.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
