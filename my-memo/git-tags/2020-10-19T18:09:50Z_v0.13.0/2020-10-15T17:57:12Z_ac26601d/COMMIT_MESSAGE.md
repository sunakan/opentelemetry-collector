commit ac26601d2fa82e443111eec00374070c762ef2ba
Author: Kositsyn Pavel <kositsyn.pa@phystech.edu>
Date:   Thu Oct 15 20:57:12 2020 +0300

    Add unmarshalling for pdata.Traces (#1948)
    
    Adding a feature - allow to unmarshal pdata.Traces from protobuf
    
    **Link to tracking Issue:** #1939
    
    **Testing:** unmarshal(marshal(trace)) = trace
