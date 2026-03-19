commit 264426a9cae4790bd4754ebef781470e7279cdcb
Author: Owais Lone <owais@users.noreply.github.com>
Date:   Thu Jan 16 04:21:40 2020 +0530

    Added client package to help identify RPC/HTTP clients (#326)
    
    Client package will help identify clients connecting to different
    receivers and enable usecases where processors might depend on some
    information about the client. For example, a rate-limiting processor
    might need some information about clients to figure out when and how to
    rate-limit. Also, the upcoming kubernetes processor depends on this as
    it needs the IP address of the clients to properly identify resources.
    
    Submitting this as an independent PR as it is generic enough and not
    tied to any single processor or usecase.
    
    This PR adds support to the OC, Zipkin and Jaeger GRPC receivers. I'll implement the
    same feature for older jaeger receivers in a follow up PR.
