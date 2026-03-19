commit f306288b57856f7668e541a49d9945c3c707b7a3
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Thu Feb 19 19:10:31 2026 +0000

    fix(deps): update all opentelemetry-go-contrib packages (#14602)
    
    This PR contains the following updates:
    
    | Package | Change |
    [Age](https://docs.renovatebot.com/merge-confidence/) |
    [Confidence](https://docs.renovatebot.com/merge-confidence/) |
    |---|---|---|---|
    |
    [go.opentelemetry.io/contrib/bridges/otelzap](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib)
    | `v0.13.0` → `v0.15.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcontrib%2fbridges%2fotelzap/v0.15.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcontrib%2fbridges%2fotelzap/v0.13.0/v0.15.0?slim=true)
    |
    |
    [go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib)
    | `v0.63.0` → `v0.65.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcontrib%2finstrumentation%2fgoogle.golang.org%2fgrpc%2fotelgrpc/v0.65.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcontrib%2finstrumentation%2fgoogle.golang.org%2fgrpc%2fotelgrpc/v0.63.0/v0.65.0?slim=true)
    |
    |
    [go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib)
    | `v0.63.0` → `v0.65.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcontrib%2finstrumentation%2fnet%2fhttp%2fotelhttp/v0.65.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcontrib%2finstrumentation%2fnet%2fhttp%2fotelhttp/v0.63.0/v0.65.0?slim=true)
    |
    |
    [go.opentelemetry.io/contrib/otelconf](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib)
    | `v0.18.0` → `v0.20.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcontrib%2fotelconf/v0.20.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcontrib%2fotelconf/v0.18.0/v0.20.0?slim=true)
    |
    |
    [go.opentelemetry.io/contrib/propagators/b3](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib)
    | `v1.38.0` → `v1.40.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcontrib%2fpropagators%2fb3/v1.40.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcontrib%2fpropagators%2fb3/v1.38.0/v1.40.0?slim=true)
    |
    |
    [go.opentelemetry.io/contrib/zpages](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib)
    | `v0.63.0` → `v0.65.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcontrib%2fzpages/v0.65.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcontrib%2fzpages/v0.63.0/v0.65.0?slim=true)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>open-telemetry/opentelemetry-go-contrib
    (go.opentelemetry.io/contrib/bridges/otelzap)</summary>
    
    ###
    [`v0.15.0`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/releases/tag/v0.15.0)
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/compare/v0.14.0...v0.15.0)
    
    #### \[0.15.0] - 2020-12-11
    
    ##### Added
    
    - A new Amazon EKS resource detector.
    ([#&#8203;465](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/465))
    - A new `gcp.CloudRun` detector for detecting resource from a Cloud Run
    instance.
    ([#&#8203;455](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/455))
    
    # Raw changes made between v0.14.0 and v0.15.0
    
    
    [`e7b70eb`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/e7b70ebe12f49009ebb92633bded2dbcf7d62e1d)
    Prepare for v0.15.0 release
    ([#&#8203;486](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/486))
    
    [`54c6a6c`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/54c6a6c67d9c262cbbb37be584c58184d8e4ef1c)
    Add detector for Cloud Run service.
    ([#&#8203;455](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/455))
    
    [`79af2e9`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/79af2e9294fc3c321b8d8e5b101c1bdda11d5a00)
    Bump google.golang.org/grpc from 1.33.2 to 1.34.0 in
    /instrumentation/google.golang.org/grpc/otelgrpc
    ([#&#8203;481](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/481))
    
    [`fd9db4a`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/fd9db4ad46043297e4daf81eba46a874510222d0)
    Bump cloud.google.com/go from 0.72.0 to 0.73.0 in /detectors/gcp
    ([#&#8203;483](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/483))
    
    [`8f0fa29`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/8f0fa29ab4be7a8dd5734ab5ebf0b70a684833b5)
    Bump google.golang.org/grpc from 1.33.2 to 1.34.0 in
    /instrumentation/google.golang.org/grpc/otelgrpc/example
    ([#&#8203;482](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/482))
    
    [`401ff52`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/401ff527849886d54953166b95440515b4303cc1)
    Bump google.golang.org/grpc from 1.33.2 to 1.34.0 in
    /propagators/opencensus/examples
    ([#&#8203;480](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/480))
    
    [`da8faf5`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/da8faf5819e1b027e3ded6a37565b29d1a14f4db)
    Bump github.com/aws/aws-sdk-go from 1.35.35 to 1.36.2 in /detectors/aws
    ([#&#8203;479](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/479))
    
    [`b02fae7`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/b02fae7b2555d252c2dec3044a835346e7da41ee)
    Add Amazon EKS Resource Detector
    ([#&#8203;465](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/465))
    
    [`d1534b8`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/d1534b84593e617bff9a848454a992a7af49385c)
    add opencensus propagation readme and example
    ([#&#8203;473](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/473))
    
    [`e1c598c`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/e1c598c1552dc1bcdb25211026b6e5a1583a1b66)
    Add AWS X-Ray Propagator
    ([#&#8203;462](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/462))
    
    [`f9f5a21`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/f9f5a21804b80fb8f1795831e911d1ee88f5568c)
    move opencensus binary propagation to contrib
    ([#&#8203;467](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/467))
    
    [`82eb6a3`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/82eb6a34c55dd2caa0d72163c4111aa30f690453)
    Bump github.com/google/go-cmp from 0.5.3 to 0.5.4 in
    /instrumentation/net/http/httptrace/otelhttptrace
    ([#&#8203;472](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/472))
    
    [`7ffe595`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/7ffe5955a11c5efa736340d062e94e012c2c8103)
    Bump github.com/google/go-cmp from 0.5.3 to 0.5.4 in /propagators
    ([#&#8203;471](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/471))
    
    [`be1c230`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/be1c230404f98fc33de1b1fd422fcfadab80ac04)
    Bump github.com/google/go-cmp from 0.5.3 to 0.5.4 in
    /exporters/metric/cortex
    ([#&#8203;470](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/470))
    
    [`59c92e2`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/59c92e2c003c5f3b02b4e4bc5e3b8f9421dbded8)
    Bump github.com/aws/aws-sdk-go from 1.35.33 to 1.35.35 in /detectors/aws
    ([#&#8203;469](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/469))
    
    [`9e9f21b`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/9e9f21b28641eff521e5dc252c18d857dd692a4e)
    Bump github.com/golangci/golangci-lint from 1.32.2 to 1.33.0 in /tools
    ([#&#8203;468](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/468))
    
    [`645d23a`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/645d23aff84561b7fcaa35b7c06037fef3a87f09)
    Add Amazon ECS Resource Detector
    ([#&#8203;466](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/466))
    
    [`d648427`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/d6484270be6fb34a9d47dde39e3f94ed479165c2)
    Bump github.com/aws/aws-sdk-go from 1.35.28 to 1.35.33 in /detectors/aws
    ([#&#8203;463](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/463))
    
    [`3be1f0d`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/3be1f0dcd2834d9b2e2636406eeaa0eec7926755)
    Bump github.com/Shopify/sarama from 1.27.0 to 1.27.2 in
    /instrumentation/github.com/Shopify/sarama/otelsarama
    ([#&#8203;464](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/464))
    
    ###
    [`v0.14.0`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/releases/tag/v0.14.0)
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/compare/v0.13.0...v0.14.0)
    
    ##### Added
    
    - `otelhttp.{Get,Head,Post,PostForm}` convenience wrappers for their
    `http` counterparts.
    ([#&#8203;390](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/390))
    - The AWS detector now adds the cloud zone, host image ID, host type,
    and host name to the returned `Resource`.
    ([#&#8203;410](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/410))
    
    ##### Changed
    
    - Add semantic version to `Tracer` / `Meter` created by instrumentation
    packages `otelsaram`, `otelrestful`, `otelmongo`, `otelhttp` and
    `otelhttptrace`.
    ([#&#8203;412](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/412))
    - Update instrumentation guidelines about tracer / meter semantic
    version.
    ([#&#8203;412](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/412))
    - Replace internal tracer and meter helpers by helpers from
    `go.opentelemetry.io/otel`.
    ([#&#8203;414](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/414))
    - gRPC instrumentation sets span attribute `rpc.grpc.status_code`.
    ([#&#8203;453](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/453))
    
    #### Fixed
    
    - `/detectors/aws` no longer fails if instance metadata is not available
    (e.g. not running in AWS)
    ([#&#8203;401](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/401))
    - The AWS detector now returns a partial resource and an appropriate
    error if it encounters an error part way through determining a
    `Resource` identity.
    ([#&#8203;410](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/410))
    - The `host` instrumentation unit test has been updated to not depend on
    the system it runs on.
    ([#&#8203;426](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/426))
    
    # Raw changes made between v0.13.0 and v0.14.0
    
    
    [`f284e28`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/f284e2828c7729d0575eb2ed9de98397e8aff04c)
    (HEAD -> master, tag: v0.14.0, tag: propagators/v0.14.0, tag:
    instrumentation/runtime/v0.14.0, tag:
    instrumentation/runtime/example/v0.14.0, tag:
    instrumentation/net/http/otelhttp/v0.14.0, tag:
    instrumentation/net/http/otelhttp/example/v0.14.0, tag:
    instrumentation/net/http/httptrace/otelhttptrace/v0.14.0, tag:
    instrumentation/net/http/httptrace/otelhttptrace/example/v0.14.0, tag:
    instrumentation/host/v0.14.0, tag: instrumentation/host/example/v0.14.0,
    tag: instrumentation/gopkg.in/macaron.v1/otelmacaron/v0.14.0, tag:
    instrumentation/gopkg.in/macaron.v1/otelmacaron/example/v0.14.0, tag:
    instrumentation/google.golang.org/grpc/otelgrpc/v0.14.0, tag:
    instrumentation/google.golang.org/grpc/otelgrpc/example/v0.14.0, tag:
    instrumentation/go.mongodb.org/mongo-driver/mongo/otelmongo/v0.14.0,
    tag: instrumentation/github.com/labstack/echo/otelecho/v0.14.0, tag:
    instrumentation/github.com/labstack/echo/otelecho/example/v0.14.0, tag:
    instrumentation/github.com/gorilla/mux/otelmux/v0.14.0, tag:
    instrumentation/github.com/gorilla/mux/otelmux/example/v0.14.0, tag:
    instrumentation/github.com/gocql/gocql/otelgocql/v0.14.0, tag:
    instrumentation/github.com/gocql/gocql/otelgocql/example/v0.14.0, tag:
    instrumentation/github.com/gin-gonic/gin/otelgin/v0.14.0, tag:
    instrumentation/github.com/gin-gonic/gin/otelgin/example/v0.14.0, tag:
    instrumentation/github.com/emicklei/go-restful/otelrestful/v0.14.0, tag:
    instrumentation/github.com/emicklei/go-restful/otelrestful/example/v0.14.0,
    tag:
    instrumentation/github.com/bradfitz/gomemcache/memcache/otelmemcache/v0.14.0,
    tag:
    instrumentation/github.com/bradfitz/gomemcache/memcache/otelmemcache/example/v0.14.0,
    tag: instrumentation/github.com/astaxie/beego/otelbeego/v0.14.0, tag:
    instrumentation/github.com/astaxie/beego/otelbeego/example/v0.14.0, tag:
    instrumentation/github.com/Shopify/sarama/otelsarama/v0.14.0, tag:
    instrumentation/github.com/Shopify/sarama/otelsarama/example/v0.14.0,
    tag: exporters/metric/dogstatsd/v0.14.0, tag:
    exporters/metric/datadog/v0.14.0, tag: exporters/metric/cortex/v0.14.0,
    tag: exporters/metric/cortex/utils/v0.14.0, tag:
    exporters/metric/cortex/example/v0.14.0, tag: detectors/gcp/v0.14.0,
    tag: detectors/aws/v0.14.0, upstream/master, origin/master, origin/HEAD)
    Release v0.14.0
    ([#&#8203;461](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/461))
    
    [`b83f931`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/b83f931760121defb061ecba196867e98faa23d9)
    Use tracer and meter test helpers from the OTEL repository instead of
    the internal ones
    ([#&#8203;414](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/414))
    
    [`1d3290d`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/1d3290da84503fb5db489381087dabd08b8a5141)
    otelgrpc: Set attribute with gRPC status code
    ([#&#8203;453](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/453))
    
    [`1010e02`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/1010e02a1c7f0a045157fd167352b258b34cb800)
    Bump gopkg.in/macaron.v1 from 1.3.9 to 1.4.0 in
    /instrumentation/gopkg.in/macaron.v1/otelmacaron/example
    ([#&#8203;452](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/452))
    
    [`f41bf49`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/f41bf49f3be5db3970344bc5e99ffca03a9b947a)
    Bump github.com/emicklei/go-restful/v3 from 3.3.3 to 3.4.0 in
    /instrumentation/github.com/emicklei/go-restful/otelrestful/example
    ([#&#8203;451](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/451))
    
    [`4ae0732`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/4ae0732601212558cd609b13c91a6224b91d91c5)
    Bump github.com/google/go-cmp from 0.5.2 to 0.5.3 in
    /instrumentation/net/http/httptrace/otelhttptrace
    ([#&#8203;450](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/450))
    
    [`1fed756`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/1fed75644add27772ccc8aeebe063ca26d1b52ae)
    Bump github.com/google/go-cmp from 0.5.2 to 0.5.3 in
    /exporters/metric/cortex
    ([#&#8203;449](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/449))
    
    [`7eac438`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/7eac438f8f8f2eccff50a66a39cc737e742381e2)
    Bump cloud.google.com/go from 0.71.0 to 0.72.0 in /detectors/gcp
    ([#&#8203;448](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/448))
    
    [`905ae72`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/905ae72df1249b388690c6410467e584a6e04142)
    Bump github.com/aws/aws-sdk-go from 1.35.23 to 1.35.28 in /detectors/aws
    ([#&#8203;447](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/447))
    
    [`a459621`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/a459621306ace185065771ca31a46c50eced8504)
    Bump github.com/golangci/golangci-lint from 1.32.1 to 1.32.2 in /tools
    ([#&#8203;440](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/440))
    
    [`19d1285`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/19d1285e62ce216105e6482cacdef2c1c083c287)
    Bump github.com/aws/aws-sdk-go from 1.35.19 to 1.35.23 in /detectors/aws
    ([#&#8203;441](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/441))
    
    [`3757c76`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/3757c76807563ae2f6807c5e4bfe30f21e9ac362)
    Bump cloud.google.com/go from 0.70.0 to 0.71.0 in /detectors/gcp
    ([#&#8203;442](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/442))
    
    [`cb3b58f`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/cb3b58f07d10bfafbcce0b09a8ee149f3026cb10)
    Bump google.golang.org/grpc from 1.33.1 to 1.33.2 in
    /instrumentation/google.golang.org/grpc/otelgrpc/example
    ([#&#8203;443](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/443))
    
    [`f43ce8d`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/f43ce8d8f9366c0435f7e0ace95cbc2be4e0fc7c)
    Bump github.com/astaxie/beego from 1.12.2 to 1.12.3 in
    /instrumentation/github.com/astaxie/beego/otelbeego/example
    ([#&#8203;444](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/444))
    
    [`520ddc7`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/520ddc709136e5131ac687441fce97b4e6cae7cc)
    Bump google.golang.org/grpc from 1.33.1 to 1.33.2 in
    /instrumentation/google.golang.org/grpc/otelgrpc
    ([#&#8203;445](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/445))
    
    [`5ad98bf`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/5ad98bfda3dc116c08f0fa7a2c54a403a9f12e54)
    Tiny README.md fix
    ([#&#8203;438](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/438))
    
    [`e7ba129`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/e7ba12942d4546d66b5853af7310c321888ff8de)
    Bump github.com/aws/aws-sdk-go from 1.35.14 to 1.35.19 in /detectors/aws
    ([#&#8203;431](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/431))
    
    [`0ceee05`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/0ceee0528535e55bb791cd14d9ee36fd070cb4cd)
    Bump github.com/golangci/golangci-lint from 1.32.0 to 1.32.1 in /tools
    ([#&#8203;430](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/430))
    
    [`13ae395`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/13ae395efa2d5c348f5bbc28c25e92b9c5c235f0)
    \[aws detector] Additional Attributes
    ([#&#8203;410](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/410))
    
    [`a3f208a`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/a3f208a586ac0b36803f566bd047e9a6a8a09114)
    Replace flaky host instrumentation test
    ([#&#8203;426](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/426))
    
    [`1d9c921`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/1d9c921b1ad4f669271608b192a30402f7eb2873)
    Bump google.golang.org/grpc from 1.32.0 to 1.33.1 in
    /instrumentation/google.golang.org/grpc/otelgrpc
    ([#&#8203;421](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/421))
    
    [`a0dc004`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/a0dc004c4bea08d463e7ee9f9e9e8e26511defc7)
    Add sem version to remaining instrumentation packages
    ([#&#8203;412](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/412))
    
    [`4a5c934`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/4a5c9349af1b10e275b1b0f9dab8475136b4a1a6)
    Bump cloud.google.com/go from 0.69.1 to 0.70.0 in /detectors/gcp
    ([#&#8203;420](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/420))
    
    [`1196609`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/119660997a4094cc6ffab555329f2a2251ebdd78)
    Bump github.com/emicklei/go-restful/v3 from 3.3.1 to 3.3.3 in
    /instrumentation/github.com/emicklei/go-restful/otelrestful/example
    ([#&#8203;422](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/422))
    
    [`c2124f7`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/c2124f7c2f4cd581e3ee6ed0610bcc0eca07ed44)
    Bump github.com/Shopify/sarama from 1.27.1 to 1.27.2 in
    /instrumentation/github.com/Shopify/sarama/otelsarama/example
    ([#&#8203;423](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/423))
    
    [`9219157`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/92191577d4e15838b368551dd861c7751d854d10)
    Bump google.golang.org/grpc from 1.32.0 to 1.33.1 in
    /instrumentation/google.golang.org/grpc/otelgrpc/example
    ([#&#8203;424](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/424))
    
    [`ca00abd`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/ca00abdfbe34dff26eaaeaa958d83cc5d0ed0ed0)
    Bump github.com/aws/aws-sdk-go from 1.35.9 to 1.35.14 in /detectors/aws
    ([#&#8203;419](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/419))
    
    [`a7a9242`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/a7a9242b7ab2b3b687aebf69aa2526f151c4a9f3)
    Bump github.com/golangci/golangci-lint from 1.31.0 to 1.32.0 in /tools
    ([#&#8203;418](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/418))
    
    [`6fcf996`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/6fcf9963dd0268d6e2bcce8e202a26b351fecae5)
    Bump cloud.google.com/go from 0.68.0 to 0.69.1 in /detectors/gcp
    ([#&#8203;405](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/405))
    
    [`46df222`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/46df2224d7cfff656cba34a4a976bad2becece7a)
    Bump github.com/golang/protobuf from 1.4.2 to 1.4.3 in
    /instrumentation/google.golang.org/grpc/otelgrpc
    ([#&#8203;406](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/406))
    
    [`d00f9ea`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/d00f9ea01b145464ba60d0b3baa5bfda75895f0c)
    Bump github.com/golang/protobuf from 1.4.2 to 1.4.3 in
    /instrumentation/google.golang.org/grpc/otelgrpc/example
    ([#&#8203;407](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/407))
    
    [`15977d3`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/15977d3780f8b5606306cce9cf35bd3963408b09)
    Bump github.com/aws/aws-sdk-go from 1.35.7 to 1.35.9 in /detectors/aws
    ([#&#8203;404](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/404))
    
    [`4f3d787`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/4f3d787cf0a6a0bef0668e0b4a18f5df114cb4b8)
    Add convenience wrappers for http.Get/Post, etc.
    ([#&#8203;390](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/390))
    
    [`15f50e0`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/15f50e00ebfa4faa8721ad2a925e8328c8f003cd)
    \[aws detector] Remove error when instance metadata is unavailable
    ([#&#8203;401](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/401))
    
    [`fc663ca`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/fc663ca9735eebaf93ce831e54884f0afff5b270)
    Update README with Org GA project board
    ([#&#8203;400](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/400))
    
    [`0a44db8`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/0a44db8d6161e040c9ee785bd0d0fbc5fa13056a)
    Bump github.com/aws/aws-sdk-go from 1.35.2 to 1.35.7 in /detectors/aws
    ([#&#8203;393](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/393))
    
    [`b1db1e9`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/b1db1e9076de84c45d0e8e9b3ea8b40a0dff66da)
    Bump cloud.google.com/go from 0.67.0 to 0.68.0 in /detectors/gcp
    ([#&#8203;394](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/394))
    
    [`072e6e8`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/072e6e840eb8471c88511aa1745f636c7f308131)
    Bump github.com/Shopify/sarama from 1.27.0 to 1.27.1 in
    /instrumentation/github.com/Shopify/sarama/otelsarama/example
    ([#&#8203;395](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/395))
    
    [`5575e5b`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/5575e5bb196aa502d8ccf35db14809fb89b7c69e)
    Bump github.com/spf13/afero from 1.4.0 to 1.4.1 in
    /exporters/metric/cortex/utils
    ([#&#8203;396](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/396))
    
    </details>
    
    ---
    
    ### Configuration
    
    📅 **Schedule**: Branch creation - "on tuesday" (UTC), Automerge - At any
    time (no schedule defined).
    
    🚦 **Automerge**: Disabled by config. Please merge this manually once you
    are satisfied.
    
    ♻ **Rebasing**: Whenever PR becomes conflicted, or you tick the
    rebase/retry checkbox.
    
    👻 **Immortal**: This PR will be recreated if closed unmerged. Get
    [config
    help](https://redirect.github.com/renovatebot/renovate/discussions) if
    that's undesired.
    
    ---
    
    - [ ] <!-- rebase-check -->If you want to rebase/retry this PR, check
    this box
    
    ---
    
    This PR was generated by [Mend Renovate](https://mend.io/renovate/).
    View the [repository job
    log](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0My4xNS4zIiwidXBkYXRlZEluVmVyIjoiNDMuMjIuMCIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    ---------
    
    Signed-off-by: alex boten <223565+codeboten@users.noreply.github.com>
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: otelbot <197425009+otelbot@users.noreply.github.com>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
