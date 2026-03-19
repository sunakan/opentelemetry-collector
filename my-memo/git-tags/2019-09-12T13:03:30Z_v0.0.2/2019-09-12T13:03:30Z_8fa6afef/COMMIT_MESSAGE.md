commit 8fa6afefef141acdb0b98b39da0338f5a0602355
Author: Owais Lone <owais@users.noreply.github.com>
Date:   Thu Sep 12 21:03:30 2019 +0800

    Translate OC resource labels to Jaeger process tags (#325)
    
    Preserve OC resource labels during translation to Jaeger by adding them
    to the process tags
    
    Right now we translate OC node to Jaeger process while completely
    ignoring OC resource labels resulting in loss of this data. This PR
    patches the OC > Jaeger translators by making sure the resource labels
    are recorded as Jaegerprocess tags. While this preserves process labels
    and prevents loss of such data when translating to Jaeger, it's not a
    perfect solution because:
    
    1. It will replace any tags from OC Node with the same names.
    
        Current behaviour is to give precedence to resource labels over node
        attributes. We can make it configurable or revisit the decision
        later.
    
    2. Translation is not reversible
    
        Translating back from Jaeger to OC will still not re-create the OC
        process object. It'll instead translate all the Jaeger process tags
        to OC node attributes. We could add some semantic convention to
        denote resource labels differently or add an additional tag to
        specify the resource tag names but doing so would add additional
        complexity to backends processing traces in the Jaeger format. Also,
        in practice, it's going to be very rare for people to translate from
        OC to Jaeger and then back from Jaeger to OC in the same data
        pipeline.
    
    While this doesn't solve the cases perfectly, we think it's better than
    completely dropping the resource data.
