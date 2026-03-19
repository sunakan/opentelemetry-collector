commit 667502b7f92e08e26b2b099acf4052e0e9a4e0a1
Author: Paulo Janotti <paulo@omnition.io>
Date:   Tue Feb 12 10:46:57 2019 -0800

    ZipkinV1 JSON Receiver: handle LOCAL_COMPONENT binary annotation (#373)
    
    The LOCAL_COMPONENT key is used to express the "component or namespace of a local span" in Zipkin V1. This should be used as a fallback if other information is not available. Opportunistically adding equivalent test to Zipkin V1 Thrift that already handles LOCAL_COMPONENT.
