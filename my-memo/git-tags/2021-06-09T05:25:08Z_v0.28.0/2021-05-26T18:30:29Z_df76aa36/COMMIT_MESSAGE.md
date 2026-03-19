commit df76aa36cd124ba4ae1b3d1ac1941155f86ea568
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed May 26 11:30:29 2021 -0700

    Move config.Parser to configparser.Parser, preparation for ParserProvider interface (#3304)
    
    Idea is that we will eventually move the https://github.com/open-telemetry/opentelemetry-collector/blob/main/service/parserprovider/provider.go#L25 in this package, so everything about config parsing is in this package.
    
    Signed-off-by: Bogdan Drutu bogdandrutu@gmail.com
