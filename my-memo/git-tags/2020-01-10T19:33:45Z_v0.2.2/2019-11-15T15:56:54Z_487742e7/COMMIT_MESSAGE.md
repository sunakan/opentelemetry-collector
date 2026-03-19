commit 487742e7c54bb7fc556e7fe53e8260b50621d541
Author: Paulo Janotti <paulo@omnition.io>
Date:   Fri Nov 15 07:56:54 2019 -0800

    Fix processor metric tag key and add queued retry name (#420)
    
    For historical reasons the tag associated to the name of a processor was still named "exporter", changed that to "processor". Added also the name of the queued retry instance to be used as the name of the processor.
