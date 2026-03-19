commit d253ccf80d1e0181e4a983c486c73ea551887c72
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Wed Jul 3 15:17:38 2019 -0400

    Move ExporterFactory to "exporter" package (#95)
    
    This is part 2 of 3 of the refactoring plan to eliminate factories.go
    and move the content to corresponding packages (receiver, exporter, processor).
