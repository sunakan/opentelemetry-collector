commit 61f4155125c268099f222030c41680babb59f26b
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Mon Jan 31 14:17:34 2022 -0800

    Remove redundant switch case in messageValueField.generateAccessors (#4774)
    
    The env var `structOriginFullName` is not used in `accessorsMessageValueTemplate`, removing the redundant switch case
