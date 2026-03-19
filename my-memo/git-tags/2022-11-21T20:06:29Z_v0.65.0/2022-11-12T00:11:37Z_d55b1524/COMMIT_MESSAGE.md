commit d55b152469f69c8482f0fc5b572c86b7c3197820
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Fri Nov 11 16:11:37 2022 -0800

    [pdata] Deprecate HexString func on SpanID and TraceID (#6530)
    
    `[SpanID|TraceID].HexString` methods currently return an empty string for empty SpanID and TraceID instances. This behavior is not defined in the OTel spec and contradicts with w3c recommendations. We don't want to promote a behavior which possibly can be changed in future.
    
    Additionally we introduce `[SpanID|TraceID].String` methods that have the same logic as `HexString` and implement `fmt.Stringer` interface to allow `SpanID` and `TraceID` instances to be used in log statements and avoid unnecessary allocation when log is not emitted. But the `String` method is not encouraged to be used as a replacement for `HexString` because of the concerns as described above.
