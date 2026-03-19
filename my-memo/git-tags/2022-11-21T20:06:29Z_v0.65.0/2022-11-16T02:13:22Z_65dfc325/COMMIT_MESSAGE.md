commit 65dfc325d974be8ebb7c170b90c6646f9eaef27b
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Tue Nov 15 18:13:22 2022 -0800

    [component] Update values returned by `StabilityLevel.String` method (#6531)
    
    This change updates values returned by `StabilityLevel.String` to be consistent with other enum types:
      - All returned strings are capitalized.
      - "Undefined" is returned only for `StabilityLevelUndefined`.
      - "" is returned for integers that are out of StabilityLevel enum range.
