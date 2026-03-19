commit a466ea49e1f58bb364b6dd2efb5d7e11b6076990
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Jan 11 12:57:10 2022 -0800

    Change configmapprovider.Provider to accept a location for retrieve (#4657)
    
    This is a preliminary change in order to support single/multiple local/remote config sources.
    This PR changes the Provider to accept an URI as the resource identifier.
    
    The current way is still fully supported and will continue to be supported, but there are more ways to specify the file:
    
    Command line(currently supported): `./otelcol --config=local.yaml`
    Command line(currently supported): `./otelcol --config=/path/to/local.yaml`
    Command line(new support): `./otelcol --config=file:/path/to/local.yaml`
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
