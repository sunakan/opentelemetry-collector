commit bad985a1a534657c421252352ef7154477d5d740
Author: Paulo Janotti <paulo@omnition.io>
Date:   Fri Feb 22 18:21:50 2019 -0800

    Add optional net/http/pprof support (#432)
    
    * Add optional net/http/pprof support
    
    Add a command-line flag to enable net/http/pprof. This is the standard golang profiler and having it available is an easy way to collect cpu/mem profile from users that may face such issues.
    
    Opportunistic fix add SIGTERM for proper k8s shutdown.
    
    Update demo to expose pprof endpoints
    
    * Remove ocagent/cli.go and use viper for pprof setup
