commit 291ddd24146f1adb11076dbe10449b4dcae12854
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Aug 10 10:54:08 2022 -0700

    Deprecate exporterhelper.New*Exporter in favor of New*ExporterWithContext (#5834)
    
    Main motivation is to pass the context to the helper in case any cancelation is needed, and to match the Create[*]Exporter calls.
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
