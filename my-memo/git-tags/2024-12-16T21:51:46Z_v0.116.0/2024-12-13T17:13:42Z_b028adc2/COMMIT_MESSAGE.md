commit b028adc23c275d243382454b82160902da8d35a6
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Fri Dec 13 09:13:42 2024 -0800

    [chore] Fix CI checks job (#11880)
    
    If we run our CI with `go-version: ~1.22.9`, we would need to update the
    toolchain every time minor go version is released to make the `checks`
    CI job pass
    
    We probably should do something else with this
