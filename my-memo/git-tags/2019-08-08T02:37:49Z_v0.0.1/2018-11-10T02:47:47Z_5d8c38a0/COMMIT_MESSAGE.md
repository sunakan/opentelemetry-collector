commit 5d8c38a04e7d44a9810890c19380536d163c3e80
Author: Paulo Janotti <paulo@omnition.io>
Date:   Fri Nov 9 18:47:47 2018 -0800

    Trace translator from Jaeger Thrift to OC-Proto (#184)
    
    * Trace translator from Jaeger Thrift to OC-Proto
    
    Adds a trace translator from Jaeger Thrift to OC-proto. This should
    be used by the agent and colllector receivers so putting the code
    under translator.
