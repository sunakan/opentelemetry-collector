commit 7a41e2f47e39ce1c91ca7381c899fb9936b6add1
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Aug 10 10:54:59 2022 -0700

    Deprecate processorhelper.New*Processor in favor of New*ProcessorWithCreateSettings (#5833)
    
    Main motivation is to ensure that Settings are passed (to enable obsreport usage which requires settings to be passed) as well as the context.
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
