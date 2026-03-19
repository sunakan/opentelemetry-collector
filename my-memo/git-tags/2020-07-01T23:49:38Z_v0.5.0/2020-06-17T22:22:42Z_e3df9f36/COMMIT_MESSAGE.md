commit e3df9f36f13f08aee0edcbffe89ee4e27cfb3a6a
Author: Kevin Brockhoff <kbrockhoff@codekaizen.org>
Date:   Wed Jun 17 17:22:42 2020 -0500

    Generalize testbed and add trace translation correctness tests (#1062)
    
    Extracted out TestResultsSummary (in testbed/testbed/results.go), DataProvider (in testbed/testbed/data_provider.go), OtelcolRunner (in testbed/testbed/otelcol_runner.go), TestCaseValidator (in testbed/testbed/validator.go) interfaces with multiple implementations. Added tracing correctness tests in testbed/correctness using the testbed with different implementations of the 5 interfaces listed than what the perf tests use.
    
    **Link to tracking Issue:** Provides the support to cleanly implement #652, #1022, #1023, #1027, #1031
    
    **Testing:** All existing testbed-driven tests still pass. Correctness tests run without any panics. Correctness tests are reporting a number of bugs with translations.
    
    **Documentation:** Godocs on all public methods.
