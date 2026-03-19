commit e2b8348c94237ad2a8b5ce99a71ffcdf4337bc35
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Tue Feb 1 18:20:09 2022 -0800

    [pdatagen] Generate oneOf field (#4773)
    
    Define new pdatagen field `oneOfField` to represent `oneof` proto field. Migrate hardcoded Metric Data related functions and pdatagen numberField to use the new pdatagen field.
