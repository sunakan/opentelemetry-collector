commit b04163f87ffb2d16c14e6838880d48a5799b9ef0
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Mon Jul 8 11:49:33 2019 -0700

    Fix examples/demotrace (#134)
    
    - Use otelsvc with proper configuration to run as an agent and as a collector.
    - Temporarily disable zipkin and jaeger exporters since they are not yet
      implemented.
    - Add logging exporter so that we can see that the demo works.
