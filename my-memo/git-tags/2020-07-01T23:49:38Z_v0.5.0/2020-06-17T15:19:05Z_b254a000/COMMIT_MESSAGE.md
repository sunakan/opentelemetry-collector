commit b254a0000f50d34fe3d488da7352115d42d00dc3
Author: Nail Islamov <nilebox@users.noreply.github.com>
Date:   Thu Jun 18 01:19:05 2020 +1000

    Update Jaeger to v1.18.0 (#1132)
    
    - Update Jaeger to v1.18.0, which deletes dependency on tchannel-go: `go get github.com/jaegertracing/jaeger@v1.18.0`
    - Tidy: `go mod tidy`
    
    Fixes #1126
