commit dfe2c814d2f5c1ae8dac807de530626239a465b5
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu Apr 9 12:46:45 2020 -0400

    Allow components to discover Extensions (#810)
    
    Host.GetExtensions now allows components to discover extensions.
    This will be used by upcoming receivers that need to cooperate
    with extensions.
