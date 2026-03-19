commit c931b9875fd0aa7ec4f1fcf398c46ad7200b986b
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Wed Mar 25 13:43:35 2020 -0400

    Refactor component and factory interface definitions (#683)
    
    As we are preparing for Beta release we want to cleanup publicly exported
    types and interfaces and do all necessary refactoring and breaking changes
    now, before the Beta release. We will have a lot less leeway for breaking
    changes after the Beta release.
    
    Component related type declarations are now all in the `component` package.
    This makes it possible for the interfaces to reference each other. This
    was were very restricted earlier because component interfaces were in 5
    different packages and many proposals were impossible to implement because
    they would result in circular dependencies between packages.
    
    (An example upcoming new capability that is enabled by this refactoring
    is for components to query the Host for other components and for factories).
    
    List of changes in this commit:
    
    - Move all factory interfaces and component interfaces to component package.
    - Rename old factories and components interfaces to use "Old" suffix for clarity.
    - Eliminate forced checks that components implement factories. This is already
      enforced by the compiler when the factory is added to the Defaults() and
      was unnecessary code.
    - Eliminated some unnecessary codes (removed overall over 200 lines).
    - Run `go mod tidy` on testbed.
    
    Warning: this is a breaking change to publicly exported types and function
    signatures. We announced that a breaking change is comming. Once we agree
    to merge this commit we will need to announce the exact list of changes
    and guide component authors to modify their components accordingly.
    
    Future changes:
    - Once all components are migrated to the new internal representation,
      delete all "Old"-suffixed definitions. This will likely be done while
      we are still in Beta phase, before the Stable release.
