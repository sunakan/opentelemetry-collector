commit c6c96f703fe5b94256cb8c187c031dc1521f6c5d
Author: William Armiros <54150514+willarmiros@users.noreply.github.com>
Date:   Tue Oct 27 08:32:08 2020 -0600

    Add array serialization to logging_exporter (#1994)
    
    Bug fix - adds serialization of array attributes, including nested arrays, in the `logging_exporter`. This allows them to be printed like the primitive attribute types when debugging. AFAICT, there aren't any attributes with array values today, but they are permitted types in the [spec](https://github.com/open-telemetry/opentelemetry-specification/blob/master/semantic_conventions/syntax.md#attributes), and I will be contributing a resource detector that uses array attributes in the future.
