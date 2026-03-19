commit 16563b62eb5b22680947e2ec127f966a56ec1aeb
Author: Fangyi Zhou <me@fangyi.io>
Date:   Thu Jun 24 16:54:13 2021 +0800

    Update to Collector v0.28.0 (#49)
    
    * Update to Collector v0.28.0
    
    Closes #48
    
    Addresses the breaking API change in
    https://github.com/open-telemetry/opentelemetry-collector/pull/3163,
    besides the usual version number changes.
    
    Signed-off-by: Fangyi Zhou <me@fangyi.io>
    
    * Use `go mod tidy` instead of `go mod download`
    
    It appears that this magically resolves the go.mod file issue.
    https://stackoverflow.com/questions/67203641/missing-go-sum-entry-for-module-providing-package-package-name
    
    Signed-off-by: Fangyi Zhou <me@fangyi.io>
