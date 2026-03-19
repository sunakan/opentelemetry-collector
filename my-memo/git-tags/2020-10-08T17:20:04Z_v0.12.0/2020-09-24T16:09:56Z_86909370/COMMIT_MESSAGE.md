commit 8690937037daf2942229ffd117177242e0e86186
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu Sep 24 12:09:56 2020 -0400

    Deprecate OpenCensus-based internal data structures (#1843)
    
    All new code must use the new pdata.* structures.
    
    TODO: move a few remaining functions that translate between
    OpenCensus-data and pdata to OpenCensus packages.
