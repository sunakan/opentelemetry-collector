commit e94b779f581fac06df42265a2dd37c5fc03a6edf
Author: ferhat elmas <elmas.ferhat@gmail.com>
Date:   Mon Dec 2 17:33:25 2019 +0100

    Integrate golangci-lint and enable scope linting (#428)
    
    * Integrate golangci-lint to easily extend linting capabilities later
      - that's why separate fmt, vet, etc. targets are dropped and all are run through umbrella lint target, golangci-lint.
    * Additionally enabled scopelint and fixed one issue
      - it's disabled for test files because it gives false positive - https://github.com/kyoh86/scopelint/issues/4.
    * Misspell on go files are also run by golangci-lint, that's why `ALL_SRC_AND_DOC` is simplified to `ALL_DOC`.
    
    Fixes #342
