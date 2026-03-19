commit 1f9a07f3d77f6ea9972e5652d14f493a3ea40dc5
Author: Conor Evans <43791257+conorevans@users.noreply.github.com>
Date:   Fri Mar 5 18:30:23 2021 +0000

    Fix sample JSON in troubleshooting.md (#2605)
    
    I was, somewhat meta, troubleshooting to ensure the agent was starting correctly, so I ran the sample cURL:
    
    ```
    > curl -X POST localhost:9411/api/v2/spans -H'Content-Type: application/json' -d '[ { "traceId": "5982fe77008310cc80f1da5e10147519", "parentId": "90394f6bcffb5d13", "id": "67fae42571535f60", "kind": "SERVER", "name": "/m/n/2.6.1", "timestamp": 1516781775726000, "duration": 26000, "localEndpoint": { "serviceName": "api" }, "remoteEndpoint": { "serviceName": "apip" }, "tags": { "data.http_response_code": "201", } } ]'
    
    invalid character '}' looking for beginning of object key string
    >
    ```
    
    I spotted a trailing comma after the response code. Removing it solved the issue:
    
    ```
    > curl -X POST localhost:9411/api/v2/spans -H'Content-Type: application/json' -d '[ { "traceId": "5982fe77008310cc80f1da5e10147519", "parentId": "90394f6bcffb5d13", "id": "67fae42571535f60", "kind": "SERVER", "name": "/m/n/2.6.1", "timestamp": 1516781775726000, "duration": 26000, "localEndpoint": { "serviceName": "api" }, "remoteEndpoint": { "serviceName": "apip" }, "tags": { "data.http_response_code": "201" } } ]'
    >
    ```
    
    Signed-off-by: Conor Evans coevans@tcd.ie
