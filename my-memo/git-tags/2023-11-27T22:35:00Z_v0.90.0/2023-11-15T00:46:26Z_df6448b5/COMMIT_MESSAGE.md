commit df6448b5aa0a0335c7a9581e0b1e46798642e845
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Tue Nov 14 16:46:26 2023 -0800

    [chore] [exporterhelper] Move workers from queue to queueSender (#8898)
    
    Move the common workers loop logic from each queue implementation to the
    sender.
    
    Based on
    https://github.com/open-telemetry/opentelemetry-collector/pull/8828
