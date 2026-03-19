commit bc4eaf5639cd13732d7eb5b4cf6664c0b25561c8
Author: Jay Camp <jay.r.camp@gmail.com>
Date:   Mon Aug 24 16:13:29 2020 -0400

    fix link check (#1626)
    
    github was 503'ing on the URL (presumably because the diff is so large now). Don't bother checking the link.
