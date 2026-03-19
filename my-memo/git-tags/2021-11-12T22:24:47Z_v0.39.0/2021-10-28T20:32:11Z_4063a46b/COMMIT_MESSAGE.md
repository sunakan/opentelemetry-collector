commit 4063a46ba205f6e13b6061f4276226bea91646a5
Author: Juraci Paixão Kröhling <juraci@kroehling.de>
Date:   Thu Oct 28 22:32:11 2021 +0200

    Move opentelemetry-collector-builder to core (#4286)
    
    * Initial commit
    
    * Add CODEOWNERS file (#2)
    
    * Add CODEOWNERS file
    
    * Update CODEOWNERS
    
    * Moved from github.com/observatorium/opentelemetry-collector-builder (#3)
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
    
    * fixed panics (#6)
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Replace master with main in CI and mergify files (#8)
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
    
    * Bump to OpenTelemetry Collector 0.20.0 (#10)
    
    Closes #9
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
    
    * Explicitly enable Go modules in quickstart instructions (#13)
    
    * Update to collector v0.21.0 (#17)
    
    Fixes #16
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
    
    * Update to collector v0.22.0 (#19)
    
    * Download go modules before building (#20)
    
    Fixes #14
    
    * Add version command (#25)
    
    Signed-off-by: Ashmita Bohara <ashmita.bohara152@gmail.com>
    
    * Pass errors from cobra Execute back to main for correct exit code (#28)
    
    * pass errors from cobra execute back to main
    
    * print the error
    
    * Update to collector v0.23.0 (#27)
    
    * Generate a warning if the builder and collector base version mismatch (#30)
    
    * Generate a warning if the builder and collector base version mismatch
    
    * Show current default version in the warning message
    
    * Update to OpenTelemetry Collector 0.24.0
    
    * Don't use %w formatting with log.Fatal (#35)
    
    * Update to OpenTelemetry Collector 0.25.0 (#36)
    
    Signed-off-by: Serge Catudal <serge.catudal@gmail.com>
    
    * Update to 0.26.0 and update BuildInfo (#39)
    
    * Sync build and CI Go versions at latest 1.16 (#34)
    
    * Sync build and CI Go versions at latest 1.16
    
    * Run go mod tidy
    
    * Set go binary to use in the compilation phase in tests
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
    
    Co-authored-by: Juraci Paixão Kröhling <juraci@kroehling.de>
    
    * Add option to generate go code only (no compile) (#40)
    
    * Issue#24 Add option to generate go code only (no compile)
    
    * Update cmd/root.go logging
    
    Suggested by @jpkkrohling
    
    Co-authored-by: Juraci Paixão Kröhling <juraci.github@kroehling.de>
    
    * remove verbose help .. created by corba
    
    * suggestion by jpkrohling to keep generateandcompile
    
    * lint error: remove unused var
    
    * reword cmd option and add back help message for default
    
    Co-authored-by: Juraci Paixão Kröhling <juraci.github@kroehling.de>
    
    * Don't reuse exec.Cmd (#42)
    
    * Update to OpenTelemetry Collector 0.27.0 (#43)
    
    * Add CI Badge (#47)
    
    * Update to Collector v0.28.0 (#49)
    
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
    
    * Account for go mod download in go1.17 not updating go.sum (#50)
    
    * Update to collector v0.29.0 (#54)
    
    * Update replaces.builder.yaml
    
    * Update nocore.builder.yaml
    
    * Update config.go
    
    * Update README.md
    
    * Update main.go
    
    * Update to collector v0.30.0 (#57)
    
    * cmd: fix module flag default value to github.com/open-telemetry (#58)
    
    Signed-off-by: Koichi Shiraishi <zchee.io@gmail.com>
    
    * Update to collector v0.31.0 (#60)
    
    * Update to v0.33.0 (#62)
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * Add excludes support to generated go.mod (#63)
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    Co-authored-by: Juraci Paixão Kröhling <juraci@kroehling.de>
    
    * Small cleanup for the builder files (#64)
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Support building with Go 1.17 (#66)
    
    * Support building with Go 1.17
    Fixes #65
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
    
    * Update workflows to use Go 1.17
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
    
    * Add gosec exceptions for exec.Command
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
    
    * Update to OpenTelemetry core 0.34.0 (#68)
    
    Fixes #67
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
    
    * Upgrade to OpenTelemetry Collector 0.35.0 (#70)
    
    Signed-off-by: Fangyi Zhou <me@fangyi.io>
    
    * Upgrade to OpenTelemetry Collector 0.36.0 (#76)
    
    * Generate custom service code for Windows (#75)
    
    * update main to include windows service code
    
    * use main version from tag 0.35.0
    
    * update main function
    
    * align with upstream v0.36.0 tag
    
    * dummy change to trigger build
    
    * Revert "dummy change to trigger build"
    
    This reverts commit 629d499461da2d2c240bf1e495b5fe0558e3547f.
    
    * Remove Core from Module type (#77)
    
    Fixes #15
    
    Signed-off-by: yugo-horie <u5.horie@gmail.com>
    
    * release 0.37.0 (#78)
    
    * release 0.37.0
    
    * update use of NewCommand
    
    * Move builder to subdirectory
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
    
    Co-authored-by: Bogdan Drutu <lazy@splunk.com>
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
    Co-authored-by: Joe Elliott <joe.elliott@grafana.com>
    Co-authored-by: Eric Yang <jiwen624@gmail.com>
    Co-authored-by: Brian Gibbins <eroteme@supernought.co.uk>
    Co-authored-by: Ashmita <ashmita.bohara152@gmail.com>
    Co-authored-by: Fangyi Zhou <me@fangyi.io>
    Co-authored-by: Shaun Creary <65406540+crearys@users.noreply.github.com>
    Co-authored-by: Patryk Małek <69143962+pmalek-sumo@users.noreply.github.com>
    Co-authored-by: Serge Catudal <serge.catudal@gmail.com>
    Co-authored-by: Aaron Stone <aaron@serendipity.cx>
    Co-authored-by: Patryk Małek <pmalek@sumologic.com>
    Co-authored-by: Aaron Stone <aaron.stone@udacity.com>
    Co-authored-by: Kelvin Lo <kello@live.ca>
    Co-authored-by: Himanshu <addyjeridiq@gmail.com>
    Co-authored-by: Y.Horie <u5.horie@gmail.com>
    Co-authored-by: Koichi Shiraishi <zchee.io@gmail.com>
    Co-authored-by: Anthony Mirabella <a9@aneurysm9.com>
    Co-authored-by: Cal Loomis <68860480+loomis-relativity@users.noreply.github.com>
    Co-authored-by: alrex <aboten@lightstep.com>
