commit 6db8faefb129265f81e2af77cb00157863d7e67c
Author: Artem Kartasov <agneum@users.noreply.github.com>
Date:   Mon Oct 7 22:59:22 2019 +0700

    Improved tests for a logging exporter and jaeger exporter (#377)
    
    - Replaced the assert package with the require package in exporter tests, simplify some tests.
    - Fixed a test for a jaeger thrift http exporter.
