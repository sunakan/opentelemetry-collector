commit c4ff024b722d1b0916a49feb6364dd8370872387
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon May 24 08:53:16 2021 -0700

    Move serializer, translator to same package with marshaler (#3259)
    
    Interface name changes:
    
    * serializer.Traces[Marshaler|Unmarshaler] -> Traces[Encoder|Decoder].
    * translator.Traces[Encoder|Decoder] -> [To|From]TracesTranslator.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
