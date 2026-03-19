commit 36dccb218dd60bfcebd05f71aed1b41affccd11f
Author: EdgeN8v <ckx19921555595@gmail.com>
Date:   Mon Mar 9 18:39:32 2026 +0800

    fix(otlphttpexporter): show actual destination URL in error messages (#14680)
    
    Fixes #14673
    
    **Description:**
    When a middleware extension modifies the request URL, HTTP error
    messages from `otlphttpexporter` previously showed the original
    placeholder URL. This PR unwraps the `*url.Error` returned by
    `http.Client.Do()` and replaces the URL in the error message with the
    actual modified destination URL (`req.URL`), preventing misleading error
    logs.
    
    Added unit tests to verify the behavior.
    
    ---------
    
    Signed-off-by: EdgeN8v <ckx19921555595@gmail.com>
    Co-authored-by: Damien Mathieu <42@dmathieu.com>
