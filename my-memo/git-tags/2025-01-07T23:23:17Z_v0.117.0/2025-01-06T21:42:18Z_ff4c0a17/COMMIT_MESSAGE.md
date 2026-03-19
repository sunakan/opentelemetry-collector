commit ff4c0a17555a04b651a6c77e7600067365922469
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Mon Jan 6 22:42:18 2025 +0100

    [chore] Unrevert automatic `replace` generation in builder-integration-test (#11940)
    
    #### Description
    
    PR #11793, which added code to automatically generate `replace` clauses
    in builder-integration-test in order to avoid issues in release PRs,
    caused [issues in a release
    PR](https://github.com/open-telemetry/opentelemetry-collector/actions/runs/12358329683/job/34488569900?pr=11904),
    and was reverted in #11909.
    
    The issue ended up being that the `replace` clause for the root
    collector module (`go.opentelemetry.io/collector`) was missing, because
    ([cf. previous source
    code](https://github.com/open-telemetry/opentelemetry-collector/blob/6a47030ba2bf247ec2c533322d1beaf5eada8981/cmd/builder/test/test.sh#L118))
    I was generating a list of module paths relative to the root, with an
    empty string for the root module, which bash helpfully ignored during
    the for loop below.
    
    This PR unreverts #11793, with a fix for the above issue. (We make sure
    to only strip the initial dot of the folder path _inside_ the for loop.)
    
    #### Link to tracking issue
    Fixes #11607, hopefully correctly this time.
    
    #### Testing
    I replicated the release PR in which the issues arose with a .1 patch
    version number, replicated the failure that was observed, and checked
    that the new script has the expected behavior.
    
    ---------
    
    Co-authored-by: Dmitrii Anoshin <anoshindx@gmail.com>
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
