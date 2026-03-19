commit e32ae894bad70f24b945f8405a662f843b09634c
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Mon Jul 1 15:47:57 2019 -0400

    Fix data race in childProcess (#82)
    
    There was a data race between GetResourceConsumption and watchResourceConsumption,
    one was setting resourceSpec, the other was reading.
    
    Now setting of resourceSpec is done before the resource motoring is started and
    both functions only read it so there is no more data race.
    
    Issue: https://github.com/open-telemetry/opentelemetry-service/issues/81
