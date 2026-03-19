commit 74729e731d3b795ab81f33875e62753cbba5d791
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Mon Sep 16 16:36:58 2024 +0200

    [mdatagen] Fix metric tests on boolean attributes (#11169)
    
    #### Description
    
    Since commit 8f3ca8a, `mdatagen` improperly generates metric tests:
    boolean attributes are always expected to be `true` in the output, no
    matter what the injected test value was. For example, [this line in
    collector-contrib](https://github.com/open-telemetry/opentelemetry-collector-contrib/blob/19b01db307d984e62f81f1880b63327ba092cd81/receiver/apachesparkreceiver/internal/metadata/generated_metrics_test.go#L1250)
    is incorrectly changed to expect `true` instead of `false` after
    updating mdatagen and running it again.
    
    The reason is [this
    line](https://github.com/open-telemetry/opentelemetry-collector/blob/8f3ca8aaf58539e5afab54d365f97624efe7cbc3/cmd/mdatagen/templates/metrics_test.go.tmpl#L182),
    which attempts to generate `assert.True` or `assert.False` based on the
    expected test value. However, `(attributeInfo $attr).TestValue` does not
    return a boolean but the *string* `true` or `false`, both of which are
    considered "truthy" by the templating engine.
    
    #### Testing
    I manually rebuilt mdatagen, ran `make generate` in collector-contrib,
    and ran the tests, to confirm that the test related to the previously
    mentioned change was no longer failing.
