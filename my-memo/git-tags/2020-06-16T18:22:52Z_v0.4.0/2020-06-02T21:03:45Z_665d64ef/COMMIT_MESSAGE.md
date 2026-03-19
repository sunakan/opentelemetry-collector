commit 665d64efef4637b8216108ed07d8b93a443833dd
Author: Chris Smith <chris.smith@zocdoc.com>
Date:   Tue Jun 2 17:03:45 2020 -0400

    Remove extra send/receive annotations with using zipkin v1 (#993)
    
    * Remove extra send/receive annotations with using zipkin v1
    Fixes https://github.com/open-telemetry/opentelemetry-collector/issues/960
    
    * Update test to use assert.EqualValues
