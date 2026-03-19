commit 6d4c33d9123c29f73437edc0da88ddeb7346853b
Author: Steven Karis <skaris@omnition.io>
Date:   Tue Feb 26 11:12:56 2019 -0800

    Add Unified factory interfaces (#428)
    
    This changes adds three factory interfaces, one for each type of generic component that can be added.
    
    `*DataExporterFactory ` creates a new `*DataExporter` which is a thin extension of `*DataProcessor`. By inheriting this interface, we can use an Exporter as a *DataProcessor, while still getting strong-typing guarantees when evaluating whether or not a pipeline is valid (it should end in an exporter).
    
    `*DataProcessorFactory` creates a new `*DataProcessor` which can be used as an intermediate step in the processing workflow.
    
    `*ReceiverFactory` creates a new `*Receiver` which listens for traffic and passes along data it receives to the next `*DataProcessor`
