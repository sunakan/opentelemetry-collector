commit 2dbd6b8af9bf413c40c74cec07c663bb576ec10a
Author: Alex Boten <aboten@lightstep.com>
Date:   Tue Jan 24 15:42:40 2023 -0800

    [chore] use opentelemetrybot (#7015)
    
    This works around the limitation that a PR created by an action doesn't trigger workflows automatically by using the opentelemetrybot's token. See https://github.com/open-telemetry/community/blob/main/assets.md#opentelemetry-bot
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
