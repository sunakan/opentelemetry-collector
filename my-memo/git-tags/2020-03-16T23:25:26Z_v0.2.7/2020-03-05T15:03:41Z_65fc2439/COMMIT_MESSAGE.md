commit 65fc2439d476494745ad3c852392aa992ced41a5
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu Mar 5 10:03:41 2020 -0500

    Introduce internal TraceData and other data structures (#584)
    
    1. Introduced data structures that represent telemetry data in-memory.
    
    2. Renamed OTLP* interfaces and types to *V2 types to denote that they are
       Internal and not OTLP and are the new version of internal data.
       Internal representation is somewhat different from OTLP.
    
    Testing done: unit tests that cover non-trivial functions. Single-line
    getters and setters are typically not covered.
    
    Documentation: added doc.go to describe the implementation and usage.
    
    Design doc and benchmarks: https://docs.google.com/document/d/1MSKjMVXQsP51lA6OwpfyLfZhWK-MkGo5vff43LhrqZU/edit#
