commit 12e3b82a4674d455a6546445665eb36d4d9fe727
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Nov 11 10:23:58 2021 -0800

    Small nits in logging exporter (#4399)
    
    * Use zapcore.Level in config to avoid manual parsing.
    * Use logger.Core to determine if debug is enabled.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
