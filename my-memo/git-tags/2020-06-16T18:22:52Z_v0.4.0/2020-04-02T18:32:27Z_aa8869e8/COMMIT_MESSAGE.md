commit aa8869e850a5909622ab0656e59445919f43347c
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Thu Apr 2 11:32:27 2020 -0700

    Switch OTLP receiver to the new internal data stucture (#742)
    
    - Also replace most of the sink trace/metric consumers with exporter/exportertest/sink_exporter.go. Probably not the best package, can be moved somewhere after that
