commit df8deb48186bfd2d2a4ce87dc0fd13db40075571
Author: Alex Boten <aboten@lightstep.com>
Date:   Tue Nov 1 09:11:58 2022 -0700

    split receiver/otlpreceiver into its own module (#6425)
    
    This splits the OTLP receiver into its own module. Currently this leaves `scraperhelper` and `scrapererror` inside the main collector module, this is similar to `exporterhelper`. Note that doing this split brought up the interesting issue that the OTLP HTTP exporter depends on the OTLP receiver for some of its tests. I can address this separately from this PR.
    
    Fixes https://github.com/open-telemetry/opentelemetry-collector/issues/6190
