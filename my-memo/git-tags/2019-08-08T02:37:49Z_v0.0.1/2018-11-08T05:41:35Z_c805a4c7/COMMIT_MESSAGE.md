commit c805a4c7efec61c3fb465344ef5577b7d45ede32
Author: yancl <kmoving@gmail.com>
Date:   Thu Nov 8 13:41:35 2018 +0800

    exporter: add Kafka exporter (#142)
    
    kafka exporter allows you to sink the spans from ocagent to Kafka
    brokers by pb format, then you can process the spans by other tools
    (such as spark streaming) for some analysis
