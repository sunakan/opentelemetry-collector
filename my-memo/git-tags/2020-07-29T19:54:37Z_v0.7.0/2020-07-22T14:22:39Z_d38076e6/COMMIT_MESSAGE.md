commit d38076e6dc7aa3c7c4f071e92a8b4c307ab7fc76
Author: Ben Keith <benkeith@splunk.com>
Date:   Wed Jul 22 10:22:39 2020 -0400

    Add Fluent Forward Protocol Receiver (#1173)
    
    This can receive logs in the [Fluent Forward
    Protocol](https://github.com/fluent/fluentd/wiki/Forward-Protocol-Specification-v1) via either TCP or Unix sockets.  It supports all of the required features of the spec.
    
    It currently does not support the optional handshake aspect of the
    protocol, but will acknowledge chunk options per the spec.
    
    All log entries received within a short time window of each other will
    be put into the same ResourceLog instance before being emitted to the
    next consumer in the pipline.  The Resource object is currently not
    populated in any way.
