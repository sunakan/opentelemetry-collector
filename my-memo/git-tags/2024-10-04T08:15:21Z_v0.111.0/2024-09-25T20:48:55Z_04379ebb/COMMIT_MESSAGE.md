commit 04379ebb6597bd27fe896f38fdd2b40128079b8a
Author: Tyler Yahn <MrAlias@users.noreply.github.com>
Date:   Wed Sep 25 13:48:55 2024 -0700

    Unmarshal span and link flags from JSON (#11275)
    
    For both the `Span` and `SpanLink`, the current unmarshalJsoniter
    methods do not unmarshal the `flags` field. This updates the
    functionality to correctly decode these values into the destination.
    
    Fix #11267
    
    Signed-off-by: Tyler Yahn <codingalias@gmail.com>
    
    ---------
    
    Signed-off-by: Tyler Yahn <codingalias@gmail.com>
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
