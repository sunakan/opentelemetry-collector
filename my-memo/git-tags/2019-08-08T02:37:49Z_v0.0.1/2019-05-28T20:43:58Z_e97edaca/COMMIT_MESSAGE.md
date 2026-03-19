commit e97edaca5e3c2e806c439145beebf0686484a8d1
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue May 28 16:43:58 2019 -0400

    Fix "vet" target in makefile (#558)
    
    Previously "vet" target was coded to fail if govet produced any output,
    which is not a correct assumption. Govet can produce output even in
    case of success [1]. The correct way to know if govet is successful is
    to rely on exit code, which is exactly what is done now after this change.
    
    [1] - see for example https://travis-ci.org/census-instrumentation/opencensus-service/builds/536550187
