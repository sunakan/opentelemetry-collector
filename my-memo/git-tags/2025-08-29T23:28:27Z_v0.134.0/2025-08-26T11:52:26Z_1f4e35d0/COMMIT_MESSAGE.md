commit 1f4e35d0809a0fa95e7bb7da00d2722679fbb148
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Tue Aug 26 13:52:26 2025 +0200

    Fix TestLoadTLSServerConfigReload (#13716)
    
    #### Description
    
    This fixes a test in configtls that started failing after upgrading
    testify.
    
    The test checks that the automatic certificate reloading feature works.
    However, the logic was a bit broken, and the test will fail if
    `assert.Eventually` performs its first check before the reloader has had
    the chance to do its job.
    
    I believe it started failing because of [this
    change](https://github.com/stretchr/testify/pull/1427) in testify,
    making it so that `assert.Eventually(condition, timeout, period)`
    immediately checks for `condition` instead of waiting `period` before
    performing the first check.
