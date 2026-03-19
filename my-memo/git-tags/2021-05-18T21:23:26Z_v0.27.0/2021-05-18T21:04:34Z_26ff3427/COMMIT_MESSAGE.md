commit 26ff3427edcf8aa8e29762e76169e9d527b649d8
Author: Xiangyu Zhu <frefreak.zxy@gmail.com>
Date:   Wed May 19 05:04:34 2021 +0800

    kafka exporter: seperate message conversion for otlp and jaeger (#3166)
    
    * kafka exporter: seperate message conversion for otlp and jaeger
    
    * fix test
    
    * fix format
    
    * Revert "fix format"
    
    This reverts commit f02e8fbb693b8b962916ee2999612e80c1c52bc7.
    
    * Revert "fix test"
    
    This reverts commit 23230cc11f2f6fb3dcca094127d66916000fbc44.
    
    * Revert "kafka exporter: seperate message conversion for otlp and jaeger"
    
    This reverts commit 418471881ac6bc919bf59163f0f04291e8991e7b.
    
    * convert traces/metrics/logs to sarama.ProducerMessage directly
    
    * fix linting error (impi) and changed CHANGELOG.md
    
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
