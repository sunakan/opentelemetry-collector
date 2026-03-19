commit ee334633757b32b5f87551e12eb9c18c1d7c8770
Author: Paulo Janotti <paulo@omnition.io>
Date:   Thu Feb 14 09:54:41 2019 -0800

    Make TestZipkinExportersFromYAML_roundtripJSON reliable (#391)
    
    The test depends on the 3 spans from the test data to arrive as a single batch. However, the zipkin exporter does not exposes this fine control of the zipkin reporter used to send the spans. In principle we could expose an option to adjust zipkin reporter batch size but that still requires the test to coordinate the send/receive of the batch. A simpler solution is to implement a mock of the zipkin reporter that behaves synchronously, avoiding any synchronization issue. This also avoids more API surface on the product code.
