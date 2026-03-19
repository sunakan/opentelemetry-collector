commit b4b3530a43d92f17821ee6199f03584d977d2c7b
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu Dec 12 08:44:34 2019 -0500

    Use DataSender and DataReceiver names in TestBed (#460)
    
    Exporter and Receiver names were easy to confuse with exporters
    and receivers in the actual Collector. This changes helps to make
    them distinct.
