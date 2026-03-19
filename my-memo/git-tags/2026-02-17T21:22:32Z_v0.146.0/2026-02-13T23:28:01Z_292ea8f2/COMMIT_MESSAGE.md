commit 292ea8f2720720abc650a13bece6745df3112252
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Fri Feb 13 15:28:01 2026 -0800

    [mdatagen] Add optional relationships field to entity schema (#14582)
    
    Work towards
    https://github.com/open-telemetry/opentelemetry-collector/issues/14284
    
    This PR introduces an optional `relationships` field to define
    relationships between entities in metadata.yaml. No code or
    documentation is generated from relationships at this time.
    
    The relationships will be used in the future for:
    1. Immediate need: Determining what entities need to be associated with
    resources when only one "owning" entity is directly associated with the
    produced telemetry.
    2. Long term: Sending the relationships along with entity events
