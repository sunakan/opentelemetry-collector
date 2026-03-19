commit d6147389a6cd0ba192e1ba0fad2f26bc3f4c655b
Author: Paulo Janotti <paulo@omnition.io>
Date:   Wed Feb 26 12:53:35 2020 -0800

    Change exporterhelper from observability to obsreport package (#568)
    
    This is the first part of moving all components to use the obsreport package (with the goal of making uniform the metrics used by various components).
    
    - introduce the command-line option to select the new/legacy metrics, the default for now is legacy metrics.
    - remove the options to have or not metrics and tracing from exporterhelper since all usages were enabling both (the only not using it on contrib was by mistake)
