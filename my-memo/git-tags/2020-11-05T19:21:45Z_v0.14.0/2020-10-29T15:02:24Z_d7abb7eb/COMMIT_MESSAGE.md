commit d7abb7eb2a0219965c3cb4355c545a701c2d513e
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu Oct 29 11:02:24 2020 -0400

    Eliminate TESTBED_CONFIG in favor of tests specifying the executable path (#2024)
    
    Contributes to https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/873
    
    We had the concept of a testbed config file that was specified via TESTBED_CONFIG
    env variable. The idea was that the config file would contain definitions for all
    tests to use, including the location of the executable to test.
    
    Time has shown that we never used anything other than the local.yaml config
    with one specific location of the executable.
    
    We now have the need to allow tests to individually specify different executable.
    This is needed to run certain tests against the "unstable" executable that contains
    unstable features (such as Log receivers in the contrib repo).
    
    This change eliminates the concept of testbed config and TESTBED_CONFIG env variable.
    Instead the location of the executable is defined in the TestCase with the default
    location pointing to the regular "../../bin/otelcol_{{.GOOS}}_{{.GOARCH}}" executable.
    
    Individual tests can now override this by setting ChildProcess.AgentExePath to something
    else if needed. We will use this capability in the contrib testbed.
    
    Also had to fix Scenario1kSPSWithAttrs to use new available ports and correctly wait
    for the generator to send more non-zero number of items.
