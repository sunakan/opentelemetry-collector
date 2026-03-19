commit 3eb3b664a83202fe9102741bc01c42bab775837f
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu Sep 3 18:40:24 2020 -0400

    Prepare for custom data type usage in protos (#1738)
    
    This enchances proto file patching so that we can use gogo custom tags
    in proto files.
    
    The references to gogo.proto file is currently uses hard-coded version
    number in the path (github.com/gogo/protobuf@v1.3.1/gogoproto/gogo.proto).
    We will improve this in the future to automatically use the correct version
    number based on our go.mod file.
    
    This will be followed by a change which introduces a custom data type
    for trace_id field.
