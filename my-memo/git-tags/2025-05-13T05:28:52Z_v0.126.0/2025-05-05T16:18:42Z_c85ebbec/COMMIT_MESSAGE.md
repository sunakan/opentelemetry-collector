commit c85ebbec779fa00c3fbe4a555eb0d420bdad7581
Author: Arthur Silva Sens <arthursens2005@gmail.com>
Date:   Mon May 5 13:18:42 2025 -0300

    Fix snappy/framed-snappy encoding/decoding (#12911)
    
    #### Description
    This is an alternative PR to #12825.
    
    I'm taking all the commits from that PR and adding the feature gate on
    the client side, as requested by reviews. The server behavior of peeking
    into the initial bytes to identify the encoding is kept :)
    
    If you've reviewed the previous PR, you can just review the latest
    commit!
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #10584
    
    ---------
    
    Signed-off-by: Arthur Silva Sens <arthursens2005@gmail.com>
    Co-authored-by: Michael Graff <mgraff@cardinalhq.io>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
    Co-authored-by: Jonathan <perebaj@gmail.com>
