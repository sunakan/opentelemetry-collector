commit 863c1b77c2e53455f8b083a4207aa56cefe38a50
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Aug 16 12:52:14 2021 -0700

    Remove small hack in the DefaultUnmarshaler caused by viper bug. (#3834)
    
    When changed to Koanf in https://github.com/open-telemetry/opentelemetry-collector/pull/3337 the Viper
    bug (keys with nil values are ignored) that causes the workaround was fixed, so use the unmarshaled values.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
