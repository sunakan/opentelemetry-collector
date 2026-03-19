commit b4c96718a95ada7f7e45b0b60ec1a93531babf8c
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Wed Jun 26 21:23:44 2019 -0400

    Add End-to-end test bed (#54)
    
    Problem
    =======
    
    We need a way to run E2E tests with real agent and a load generator. Particularly
    important class of E2E tests are performance tests in controlled environment.
    
    Solution
    ========
    
    The test bed allows to easily set up a test that requires running the agent
    and a load generator, measure and define resource consumption expectations
    for the agent, fail tests automatically when expectations are exceeded.
    
    Each test case requires a agent configuration file and (optionally) load
    generator spec file. Test cases are defined as regular Go tests, see examples
    in perf_test.go.
    
    To run E2E tests go to testbed directory and run "make runtests" or run "make perf-tests"
    from top-level directory.
    
    Note that E2E tests are skipped when running regular "make test" target. The reason
    is that because E2E tests take a lot of time and require non-concurrent execution
    while other tests are typical run with -race flag.
    
    See also design doc here:
    https://docs.google.com/document/d/1omU06mBYGY0slT1yojttn9BCyp18pHaRjkkYZrY8H4Q/edit#
    
    TODO
    =====
    
    We plan to add the following functionality later:
    
    - Ability for load generator to record what it generated and then use that
      information to validate data received by mock backend from the agent.
    
    - Enforce resource consumption limits on the agent to allow testing scenarios under
      specific available resource situations (as opposed to measuring and failing tests
      which is already implemented and which is useful in different scenarios).
