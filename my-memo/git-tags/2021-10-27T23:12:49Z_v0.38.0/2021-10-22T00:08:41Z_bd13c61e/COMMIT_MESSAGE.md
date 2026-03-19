commit bd13c61ee2fcfc335e81218e8c6554ba893d3532
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Oct 21 17:08:41 2021 -0700

    Simplify unmarshal logic by adding more supported hooks (#4237)
    
    * Simplify unmarshal logic by adding more supported hooks
    
    * Add hook that supports "String -> encoding.TextUnmarshaler", e.g. zapcore.Level no longer need special unmarshaling
    * Add hook that supports "String -> ComponentID"
    * Add a special hook for map[string]interface{} -> map[ComponentID]interface{} to determine duplicates after space trimming, not sure if this error needs this special treatment.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Fix review comments
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Improve error messages for unmarshaling errors of the ComponentID
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
