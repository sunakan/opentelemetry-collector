commit 8cc8d4018db67f4f12fb10dbcb63723d04d6fb2b
Author: Povilas Versockas <povilas.versockas@coralogix.com>
Date:   Fri Apr 12 07:17:41 2024 +0300

    [mdatagen] allow filtering out metrics based on resource attributes (#9660)
    
    **Description:**
    This PR allows filtering out metrics based on resource attributes. For
    example:
    
    ```
            resource_attributes:
              k8s.pod.name:
                enabled: true
                exclude:
                  #- strict: "kube-apiserver-kind-control-plane"
                  - regexp: "kube-.*"
                  - regexp: "coredns-.*"
                  - strict: "coredns"
                  - strict: "kindnet-mpb2p"
    ```
    
    Would remove metrics that match regex or strict rules on resource
    attributes.
    
    **Link to tracking Issue:**
    https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/25134
    
    **Testing:**
    - Tested with k8scluster receiver in kind cluster.
    - unit tests added
    **Documentation:** <Describe the documentation added.>
    
    ---------
    
    Co-authored-by: Dmitrii Anoshin <anoshindx@gmail.com>
