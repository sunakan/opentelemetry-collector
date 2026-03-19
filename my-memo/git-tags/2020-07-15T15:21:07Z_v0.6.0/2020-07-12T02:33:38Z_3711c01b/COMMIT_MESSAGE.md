commit 3711c01b0c35f3fb854b6a8e079cfaa688021bc2
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Sat Jul 11 19:33:38 2020 -0700

    Migrate Resource Processor to internal data model (#1315)
    
    This commit migrates resource processor to internal data model. Existing processor configuration is relevant only to OpenCensus format, so the configuration schema has to be changed. Taking this opportunity, this commit adds existing logic for attributes manipulation from attributes processor to resource processor.
    New config uses "attributes" field which represents actions that can be made on resource attributes. Supported actions: INSERT, UPDATE, UPSERT, DELETE, HASH, EXTRACT.
    In order to migrate existing resource processor config:
    1. Move key/values from "labels" field to "attributes" with action="upsert".
    2. Add value from "type" field to "attributes" with key="opencensus.resourcetype"  and action="upsert".
