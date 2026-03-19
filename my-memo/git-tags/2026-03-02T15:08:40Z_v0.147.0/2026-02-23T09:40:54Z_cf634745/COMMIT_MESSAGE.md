commit cf634745261f5f90faf5602de10e3c65444f2db6
Author: dsevr <41191801+dsevr@users.noreply.github.com>
Date:   Mon Feb 23 11:40:54 2026 +0200

    Avoid duplicate Cobra CLI error output in generated commands (#14436)
    
    Cobra already prints the user-facing error and usage on Execute()
    failure.
    Using cobra.CheckErr(cmd.Execute()) causes duplicate error output.
    
    This change aligns cmd/builder and cmd/mdatagen with the previously
    accepted pattern (PR #14317): let Cobra own CLI messaging and have
    main() only control the exit code.
