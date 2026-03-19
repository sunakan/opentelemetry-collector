commit 1636b2ec4f9da27d704b700ff6a0d235408106b2
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Mon Nov 1 13:37:45 2021 -0400

    Clarify how Receivers must handle errors returned by Consume*() functions (#4267)
    
    This is important to make sure failed Consume*() calls are correctly handled
    by Receivers and that the Receives in turn correctly respond back to the senders
    from which they received data.
    
    We may need to audit all receivers to make sure they work according to these
    requirements.
