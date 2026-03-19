commit 72e41e3b4a5dca254e13d20c4685486fb9d095ca
Author: Ben Keith <benkeith@splunk.com>
Date:   Tue Jul 28 14:20:07 2020 -0400

    FluentBit Subprocess Extension (#1381)
    
    This extension runs FluentBit as a subprocess and does some standard
    configuration to make it talk to a fluentforward receiver running in the
    same collector.
    
    You still have to pass through the FluentBit config text but it makes
    running FluentBit with the collector a bit easier.
