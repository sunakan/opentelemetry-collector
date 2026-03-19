commit 2da68656b87c8ac03b01ea8da7d9a62d18b15239
Author: Gustavo Paiva <gustavo@lightstep.com>
Date:   Wed Nov 16 20:08:28 2022 -0300

    Instrument `batch` processor with Otel Go (#6423)
    
    - Instrument batch processor with OpenTelemetry Go.
    - Also fixed a small typo on the bucket definition of the batch_send_size_bytes view of OpenCensus.
