commit da4512d625a4981f798df16f0d51f4204c8dc85a
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Sun Mar 16 22:20:41 2025 +0000

    Replace exporterhelper Request.Export with passing a ConsumeRequest func (#12637)
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/8950
    
    The logic behind this, is that during merging and splitting we should
    not care about the export func (see complicated logic removed in
    FakeRequest of in the pdata requests implementations).
    
    Also, this simplify what user should carry with the request.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
