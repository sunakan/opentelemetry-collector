commit 1439116322ba20f8122e6ab9e9db442c86b3456e
Author: Cijo Thomas <cijo.thomas@gmail.com>
Date:   Wed Mar 26 13:38:50 2025 -0700

    [chore]  trigger changelog CI check on PR title edit (#12737)
    
    The changelog CI check is modified to be re-triggered when the PR title
    is edited. The changelog CI relies on PR title, so I think it makes
    sense to rerun it when one edits PR title (eg to include "chore", that
    can make the CI pass)
