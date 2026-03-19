commit c40b0809b02875e330e444ce251de445f0f6766f
Author: Chris Bandy <bandy.chris@gmail.com>
Date:   Mon Mar 28 02:26:22 2022 -0500

    Highlight documentation code blocks accurately (#5092)
    
    Using the wrong language identifier can make it difficult to read.
    GitHub's JSON highlighter puts a dark red background on text that is not
    JSON.
