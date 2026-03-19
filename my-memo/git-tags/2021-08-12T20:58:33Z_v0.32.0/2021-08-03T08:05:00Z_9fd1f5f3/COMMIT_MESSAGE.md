commit 9fd1f5f3e7dac2ce13cea963ff174bbd6877b6e5
Author: Eyal Maderer <87379249+emaderer@users.noreply.github.com>
Date:   Tue Aug 3 01:05:00 2021 -0700

    Added http client and server to the demo app to make the traces more interesting (#3746)
    
    - added http client and server to make the traces more interesting and not single span.
    - simplified the demo by removing the traces and metrics load generators and the OTel-agent.
    - updated the libraries and the code to use the latest OTEL APIs
