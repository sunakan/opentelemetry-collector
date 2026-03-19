commit cc88aee67530478255ecd4f4f5930390c88f5cb1
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Tue Feb 13 16:04:23 2024 -0800

    [chore] [exporterhelper] Move shutdown error from queue package (#9554)
    
    The error is created by the retry sender and used by the queue sender.
    It doesn't belong to queue package
