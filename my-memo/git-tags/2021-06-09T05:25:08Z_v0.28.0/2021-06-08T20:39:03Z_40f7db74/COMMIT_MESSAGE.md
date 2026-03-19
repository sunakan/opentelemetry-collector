commit 40f7db7462b79e0a3014e1989e3e069dc8eb556e
Author: Pablo Collins <pcollins@splunk.com>
Date:   Tue Jun 8 16:39:03 2021 -0400

    Add support for markdown generation (#3100)
    
    This change contains a CLI tool, called 'docsgen', that generates markdown files for collector
    components. The markdown files present the configuration metadata extracted by the `configschema`
    API in a human readable form that can be used to manually configure the collector.
    
    This change also makes some modifications to the package formerly knows as `schemagen`, renaming
    it to `configschema` and exporting some things, because it no longer generates a schema yaml file, but
    rather provides an equivalent API used by docsgen.
    
    Also, this PR includes one sample, generated .md document: `receiver/otlpreceiver/config.md`
