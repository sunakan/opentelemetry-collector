commit bbd70c7d5ae93907a99dd492ab7da47441e062c7
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Mon Dec 9 14:59:34 2019 -0500

    Introduce TESTBED_DURATION to control duration of E2E tests (#453)
    
    When running locally on dev machine it is often useful to have short E2E tests.
    This is now possible using TESTBED_DURATION env variable. For example to run E2E
    tests so that each takes approximately 1 second do this:
    
    TESTBED_DURATION=1s make run tests
    
    If TESTBED_DURATION is unspecified it defaults to 15 seconds which was the most
    common duration in the past.
