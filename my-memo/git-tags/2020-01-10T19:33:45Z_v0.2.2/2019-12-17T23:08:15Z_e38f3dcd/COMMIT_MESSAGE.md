commit e38f3dcd6a06961f5a3e7dcdbf1e79f94e744e93
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Dec 17 18:08:15 2019 -0500

    Add TEST_ARGS flag to E2E test execution (#467)
    
    The flag is passed to `go test` command. It allows for example to run a
    single test if needed. For example to run TestTraceNoBackend10kSPSJaeger
    execute this command:
    
    make e2e-test TEST_ARGS="-run TestTraceNoBackend10kSPSJaeger"
    
    Also fixed resource limits to pass on TravisCI.
