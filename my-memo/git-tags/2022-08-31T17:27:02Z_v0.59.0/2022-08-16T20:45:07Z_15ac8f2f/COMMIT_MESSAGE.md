commit 15ac8f2fd6cb5ba23b661d3650b856cd08df1def
Author: Pavan Krishna <pavankri@cisco.com>
Date:   Tue Aug 16 13:45:07 2022 -0700

    Enable propagation of the trace context from collector (#5670)
    
    * Enable propagation of the trace context from collector
    
    * added changelog entry
    
    * Update service/telemetry/config.go
    
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
    
    * merge conflict resolve
    
    * added config per suggestion
    
    * added test file
    
    * added test file
    
    * added test file
    
    * config->featuregate
    
    * config -> featuregate
    
    * fixed imports
    
    * added test case
    
    * added test case
    
    * fixed comment
    
    * fixed comment
    
    * Update telemetry.go
    
    * don't use autoprop
    
    * don't use autoprop
    
    * reverting back to using autoprop
    
    * added comment
    
    * updated go.sum
    
    * updated go.sum
    
    * updated go.sum
    
    * updated go.sum
    
    * introduce configuration to read the list of propagtors to be enabled through autoprop
    
    * introduce configuration to read the list of propagtors to be enabled through autoprop
    
    * added tests
    
    * make genotelcorecol
    
    * tracepropagation tests
    
    * tracepropagation tests
    
    * tracepropagation tests
    
    * updated autoprop version to official released
    
    * go mod tidy
    
    * go mod tidy
    
    * csv is now an actual list
    
    * made changes per latest suggestion
    
    * fixed readme
    
    * Update CHANGELOG.md
    
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
    Co-authored-by: Bogdan Drutu <lazy@splunk.com>
