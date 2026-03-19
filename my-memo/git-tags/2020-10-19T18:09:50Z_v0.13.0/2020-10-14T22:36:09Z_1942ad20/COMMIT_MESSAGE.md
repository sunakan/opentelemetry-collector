commit 1942ad20a0b865b22b0ff4adc108fc008b7e443e
Author: Kranti Vikram A <vikram.be@gmail.com>
Date:   Thu Oct 15 04:06:09 2020 +0530

    1306:Migrate TailSamplingProcessor to new OTLP-based internal data model and add Composite Sampler (#1894)
    
    Migrate Tail Sampling Processor to the new OTLP-based internal data model and add composite sampler
    
    **Design Doc - Added support for composite policy in tailsampling processor. This would help in grouping sampling policies and rate limiting them. https://docs.google.com/document/d/10wpIv3TtXgOik05smHm3nYeBX48Bj76TCMxPy8e1NZw/edit#heading=h.ecy5l2puwtp4
    
    **Link to tracking Issue:** 1306
    
    **Testing:** Unit testing
    
    **Documentation:** Refer https://github.com/open-telemetry/opentelemetry-collector/issues/1306, https://docs.google.com/document/d/10wpIv3TtXgOik05smHm3nYeBX48Bj76TCMxPy8e1NZw/edit#heading=h.ecy5l2puwtp4
