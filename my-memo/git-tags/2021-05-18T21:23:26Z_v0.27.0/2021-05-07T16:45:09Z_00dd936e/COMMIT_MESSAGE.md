commit 00dd936e8e733468814d1979d41fbf654ab5233e
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Fri May 7 12:45:09 2021 -0400

    Fix otlpreceiver README (was incorrect about bytes being base64 encoded) (#3123)
    
    The comment was about traceid/spanid "bytes" fields. This comment is incorrect since
    we have changed traceid/spanid fields to use hex encoding (as required by the spec).
    
    In the future if we add any other "bytes" fields to the proto they will be encoded as base64
    as it is expected and is default behavior of Protobuf/JSON, but this does not require an
    explicit comment, so I am deleting it.
