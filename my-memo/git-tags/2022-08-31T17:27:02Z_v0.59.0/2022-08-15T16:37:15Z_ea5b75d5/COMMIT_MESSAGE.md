commit ea5b75d55707e97f668f0afa931160d99a8aa07b
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Aug 15 09:37:15 2022 -0700

    Change TraceFlags to use same struct concept as MetricDataPointFlags (#5866)
    
    Deprecates LogRecord.Flags() and LogRecord.SetFlags() in favor of LogRecord.FlagsStruct()
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
