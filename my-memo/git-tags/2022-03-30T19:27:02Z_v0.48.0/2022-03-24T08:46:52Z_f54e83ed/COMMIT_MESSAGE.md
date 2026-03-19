commit f54e83edbb7bbd0caaa6167d96e9c4481e531ff1
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Mar 24 10:46:52 2022 +0200

    Change structs in otlpgrpc to follow standard go encoding interfaces (#5062)
    
    * Change `UnmarshalJSON[Traces|Metrics|Logs][Reques|Response]` to be a func `UnmarshalJSON` on the struct.
    * Rename `[Traces|Metrics|Logs][Reques|Response].Marshal` to `MarshalProto` consistent with JSON/Text standard interfaces.
    * Change `UnmarshalJSON[Traces|Metrics|Logs][Reques|Response]` to be a func `UnmarshalProto` on the struct.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
