commit d17cdd64cf2f82127f185543b391c87c5fe9e6b2
Author: Paulo Janotti <paulo@omnition.io>
Date:   Mon Feb 4 14:29:35 2019 -0800

    Use enums to replace attribute's runtime prefix function
    
    Instead of always dynamically creating a prefix function to determine
    the prefix for Zipkin attributes, we use enumerations of the direction
    and create strings at compile time. This is similar to the work that we did
    on the Zipkin exporter
