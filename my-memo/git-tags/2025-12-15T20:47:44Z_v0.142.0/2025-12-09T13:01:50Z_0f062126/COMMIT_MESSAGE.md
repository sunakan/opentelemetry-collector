commit 0f0621269b3e19642c93fb2a79a2c9c120cdf677
Author: Hazel Bachrach <hibachrach@gmail.com>
Date:   Tue Dec 9 05:01:50 2025 -0800

    Clarify expected behavior on component shutdown (#14166)
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    The old text to me was ambiguous as "cleared" typically means "emptied
    with the contents destroyed" (i.e., like the `clear` built-in function),
    but the API semantics actually expect the buffer to be _flushed_. This
    came up [on Slack][slack_thread] and it was suggested I open a PR.
    
    [slack_thread]:
    https://cloud-native.slack.com/archives/C01N6P7KR6W/p1763268895514129?thread_ts=1763186839.475819&cid=C01N6P7KR6W
    <!--Please delete paragraphs that you did not use before submitting.-->
