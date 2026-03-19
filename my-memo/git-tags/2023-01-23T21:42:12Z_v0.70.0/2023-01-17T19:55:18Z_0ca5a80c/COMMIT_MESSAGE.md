commit 0ca5a80ca78a99adeed516e3fff39f6c40d27a57
Author: Peter Deng <newly.deng@gmail.com>
Date:   Wed Jan 18 03:55:18 2023 +0800

    [exporter/otlphttp] Retry only on status code 429/502/503/504 (#6846)
