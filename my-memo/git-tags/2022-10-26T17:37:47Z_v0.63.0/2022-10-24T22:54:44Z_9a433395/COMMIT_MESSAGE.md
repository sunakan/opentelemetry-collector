commit 9a4333959bbbbb8722b67a92713a0c37bf3a1e13
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Oct 24 15:54:44 2022 -0700

    Split config unmarshaler per config section (#6390)
    
    This change will allow to break circular dependency (service | service/internal/pipelines | service/internal/configunmarshaler | config.Config) which blocks removing of the deprecated `config.Config`
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
