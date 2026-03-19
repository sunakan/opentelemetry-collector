commit f8e42dd6a4320beb94cae486857d68343093f99e
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Jan 25 09:08:45 2023 -0800

    Group imports in builder templates (#7020)
    
    goimport does not merge different blocks, it only splits blocks based on the rules. Because of that we should have only one import group and every repo splits by their rules.
    
    See https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/16828/files#diff-5040246c296b340124c7a2c8a7903ba51ae5fcf34a1d3e353cd2f49ab9bf07e3R14
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
