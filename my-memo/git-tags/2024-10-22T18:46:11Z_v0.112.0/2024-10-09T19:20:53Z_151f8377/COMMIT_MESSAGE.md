commit 151f8377d8c4c123275eaea57a66f35fd8682e18
Author: Daniel Jaglowski <jaglows3@gmail.com>
Date:   Wed Oct 9 15:20:53 2024 -0400

    [chore][graph] Remove connectorNode's separate baseConsumer (#11333)
    
    Follows #11330
    
    Currently, `connectorNode` contains separate `component.Component` and
    `baseConsumer` fields. These fields are essentially two representations
    of the same component, but `baseConsumer` may be wrapped in another
    consumer that inherits capabilities. Rather than maintain two separate
    handles, this PR switches to a unified field. I believe this change
    helps normalize the connector node with other types of consumer nodes
    and will enable further refactoring opportunities.
