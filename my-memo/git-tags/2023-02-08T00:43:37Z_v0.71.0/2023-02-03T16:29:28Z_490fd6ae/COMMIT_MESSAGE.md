commit 490fd6ae5b6ce704ed0c0c3bc6b3fd95715a84e8
Author: Daniel Jaglowski <jaglows3@gmail.com>
Date:   Fri Feb 3 11:29:28 2023 -0500

    Add full component graph build (#7045)
    
    * Add full component graph build
    
    * PR feedback
    
    * Split adding nodes to graph from adding to pipelines
    
    * Rename fanInNode to capabilitiesNode
    
    * Add consumerNode interface
    
    * Clarify comments about start/stop order of graph
    
    * Simplify nextProcessors
    
    * Move virtual node creation to createNodes, simplify createEdges
    
    * Remove node build methods. Pull CreateSettings into buildComponent functions.
    
    * Fix capabilities node MutatesData
