commit 0a982f42d666f138af2e0b4a3accbdb6ea6a8fe6
Author: Paulo Janotti <paulo@omnition.io>
Date:   Fri Feb 15 11:23:57 2019 -0800

    Fix flaky test for Zipkin LOCAL_COMPONENT handling (#400)
    
    Internally the function being tested uses a map to generate the slice with the translation results, however, the order is not deterministic and some runs fail. There are just two elements on the translated results but to make clear the expectation of the test this change uses sort.Slice function to achieve the desired order.
