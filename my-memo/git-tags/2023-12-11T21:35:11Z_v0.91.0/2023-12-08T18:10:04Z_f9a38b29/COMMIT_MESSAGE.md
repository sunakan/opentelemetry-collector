commit f9a38b29c7f35f9eb8f4ea00844ef96b8091e14b
Author: Dani Louca <59848726+dloucasfx@users.noreply.github.com>
Date:   Fri Dec 8 13:10:04 2023 -0500

    Introduce HTTP2 health check transport options (#9022)
    
    **Description:**
    This PR introduces options to enable `http/2` health check by exposing
    `HTTP2ReadIdleTimeout` and `HTTP2PingTimeout`
    
    The golang issues are:
    https://github.com/golang/go/issues/59690
    https://github.com/golang/go/issues/36026
    
    In summary, if due to environmental issue the underlying tcp connection
    used by the http/2 client in the exporter became
    unstable/unusable/unreachable, unlike http/1, the http/2 client does not
    forcibly close the connection and redial a new one, instead it keeps
    using it for 15 minutes (default value of OS `tcp_retries2` ) until the
    OS cleans it up and a new tcp connection gets established.
    From OTEL user perspective, one will see a spike in export
    failures/timeouts for ~15 minutes, this will happen for every connection
    that got into a bad state, after 15 minutes things will recover until
    next time the tcp connection gets into a bad state.
    
    
    **Testing:**
    - Run OTEL with one of the exporters that uses HTTP/2 client, example
    `signalfx` exporter
    - For simplicity use a single pipeline/exporter
    - In a different shell, run this to watch the tcp state of the
    established connection
    ```
     while (true); do echo date; sudo netstat -anp | grep -E '<endpoin_ip_address(es)>' | sort -k 5; sleep 2; done
     ```
    - From the netstat, take a note of the source port and the source IP address
    - replace <> from previous step
    `sudo iptables -A OUTPUT -s <source_IP> -p tcp --sport <source_Port> -j DROP`
    - Note how the OTEL exporter export starts timing out
    
    Expected Result:
    - A new connection should be established, similarly to http/1 and exports should succeed
    
    Actual Result:
    - The exports keep failing for  ~ 15 minutes or for whatever the OS `tcp_retries2` is configured to
    - After 15 minutes, a new tcp connection is created and exports start working
    
    **Documentation:**
    Readme is updated with new settings
    
    Signed-off-by: Dani Louca <dlouca@splunk.com>
