commit 733449ee6558cfb7bbf2a0c5bac8db6c8dfcef6c
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu Feb 18 18:54:36 2021 -0500

    Add "compression" option to otlphttp exporter (#2502)
    
    The default value of "compression" option is empty and results in no compression,
    which is the same as the old behavior. You can also specify "compression: gzip"
    which will result in gzip encoding of outgoing http requests.
